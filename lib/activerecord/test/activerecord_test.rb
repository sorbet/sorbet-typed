# typed: true

# This code is all taken from the ActiveRecord Migrations guide.
# https://guides.rubyonrails.org/active_record_migrations.html
# This tests as many valid migrations methods as it can.
class ActiveRecordMigrationsTest < ActiveRecord::Migration::Current
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
 
      t.timestamps
    end

    add_column :products, :part_number, :string
    rename_column :users, :email, :email_address
    remove_column :products, :part_number, :string

    add_index :products, :part_number
    add_reference :products, :user, foreign_key: true

    add_column :products, :price, :decimal, precision: 5, scale: 2
    add_reference :products, :supplier, polymorphic: true

    create_join_table :products, :categories, column_options: { null: true }
    create_join_table :products, :categories, table_name: :categorization

    create_join_table :products, :categories do |t|
      t.index :product_id
      t.index :category_id
    end

    change_table :products do |t|
      t.remove :description, :name
      t.string :part_number
      t.index :part_number
      t.rename :upccode, :upc_code
    end

    change_column :products, :part_number, :text

    change_column_null :products, :name, false
    change_column_default :products, :approved, from: true, to: false

    add_foreign_key :articles, :authors
    remove_foreign_key :accounts, :branches
    remove_foreign_key :accounts, column: :owner_id
    remove_foreign_key :accounts, name: :special_fk_name
    
    execute <<-SQL
      ALTER TABLE distributors
        DROP CONSTRAINT zipchk
    SQL

    drop_table :distributors

    suppress_messages do
      create_table :products do |t|
        t.string :name
        t.text :description
        t.timestamps
      end
    end
 
    say "Created a table"
 
    suppress_messages { add_index :products, :name }
    say "and an index!", true
 
    say_with_time 'Waiting for a while' do
      sleep 10
      250
    end
  end
end

module ActiveRecordAssociationsTest
  extend ActiveRecord::Associations::ClassMethods

  has_many :people
  has_many :people, -> { true }, class_name: "Person"
  has_many :tracks, dependent: :destroy
  has_many :comments, dependent: :nullify
  has_many :tags, as: :taggable
  has_many :subscribers, through: :subscriptions, source: :user

  has_one :credit_card
  has_one :credit_card, dependent: :destroy
  has_one :credit_card, dependent: :nullify
  has_one :last_comment, class_name: "Comment"
  has_one :attachment, as: :attachable
  has_one :club, through: :membership
  has_one :primary_address, -> { true }, through: :addressables, source: :addressable
  has_one :credit_card, required: true

  has_and_belongs_to_many :projects
  has_and_belongs_to_many :projects, -> { true }
  has_and_belongs_to_many :nations, class_name: "Country"
  has_and_belongs_to_many :categories, join_table: "prods_cats"

  belongs_to :firm, foreign_key: "client_of"
  belongs_to :person, primary_key: "name", foreign_key: "person_name"
  belongs_to :author, class_name: "Person", foreign_key: "author_id"
  belongs_to :attachable, polymorphic: true
  belongs_to :post, counter_cache: true
  belongs_to :comment, touch: true
  belongs_to :company, touch: :employees_last_updated_at
  belongs_to :comment, autosave: true, required: true
  belongs_to :user, optional: true
  belongs_to :account, default: -> { true }
end

class ApplicationRecord < ActiveRecord::Base; end
class ActiveRecordCallbacksTest < ApplicationRecord
  before_save :normalize_card_number, if: :paid_with_card?
  before_save :normalize_card_number, if: Proc.new { |order| order.paid_with_card? }
  before_save :log_save_action
  around_save :log_save_action
  after_save :log_save_action

  before_destroy :log_destroy_action
  around_destroy :log_destroy_action
  after_destroy :log_destroy_action

  before_update :log_update_action
  around_update :log_update_action
  after_update :log_update_action

  before_create :log_create_action
  around_create :log_create_action
  after_create :log_create_action
  after_create :send_email_to_author, if: :author_wants_emails?, unless: Proc.new { |comment| comment.article.ignore_comments? }

  after_commit :log_commit_action
  after_commit :log_user_saved_to_db, on: :create
  after_commit :log_user_saved_to_db, on: [:create, :update]

  before_validation :validation_setup
  before_validation :validation_setup, on: :create
  after_validation :validation_teardown
  after_validation :validation_teardown, on: [:create, :update]
end

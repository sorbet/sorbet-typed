# typed: true

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

class ActiveRecordNestedAttributeTest < ApplicationRecord
  # creates avatar_attributes=
  accepts_nested_attributes_for :avatar, reject_if: proc { |attributes| attributes['name'].blank? }
  # creates avatar_attributes=
  accepts_nested_attributes_for :avatar, reject_if: :all_blank
  # # creates avatar_attributes= and posts_attributes=
  accepts_nested_attributes_for :avatar, :posts, allow_destroy: true
end

class ActiveRecordMigrationsTest
  def test_table
    # Hack around the fact that change_table isn't included in the all/activerecord.rbi.
    # Normally this'd be more like `change_table :foo do |t|`.
    t = ActiveRecord::ConnectionAdapters::Table.new

    t.column(:name, :string)

    t.string(:name) unless t.column_exists?(:name, :string)

    t.index(:name)
    t.index([:branch_id, :party_id], unique: true)
    t.index([:branch_id, :party_id], unique: true, name: 'by_branch_party')

    unless t.index_exists?(:branch_id)
      t.index(:branch_id)
    end

    t.rename_index(:user_id, :account_id)

    t.timestamps(null: false)

    t.change(:name, :string, limit: 80)
    t.change(:description, :text)

    t.change_default(:qualification, 'new')
    t.change_default(:authorized, 1)
    t.change_default(:status, from: nil, to: "draft")

    t.remove(:qualification)
    t.remove(:qualification, :experience)

    t.remove_index(:branch_id)
    t.remove_index(column: [:branch_id, :party_id])
    t.remove_index(name: :by_branch_party)

    t.remove_timestamps

    t.rename(:description, :name)

    t.references(:user)
    t.belongs_to(:supplier, foreign_key: true)

    t.remove_references(:user)
    t.remove_belongs_to(:supplier, polymorphic: true)

    t.foreign_key(:authors)
    t.foreign_key(:authors, column: :author_id, primary_key: "id")

    t.remove_foreign_key(:authors)
    t.remove_foreign_key(column: :author_id)

    t.foreign_key(:authors) unless t.foreign_key_exists?(:authors)
  end

  def test_table_definitions
    # Hack around the fact that create_table isn't included in the all/activerecord.rbi.
    # Normally this'd be more like `create_table :foo do |t|`.
    t = ActiveRecord::ConnectionAdapters::TableDefinition.new

    t.string :foo
    t.text :foo
    t.integer :foo
    t.bigint :foo
    t.float :foo
    t.decimal :foo
    t.numeric :foo
    t.datetime :foo
    t.timestamp :foo
    t.time :foo
    t.date :foo
    t.binary :foo
    t.boolean :foo
    t.json :foo
    t.virtual :foo

    t.index [:foo, :bar], name: "index_foo_bar", unique: true
  end
end

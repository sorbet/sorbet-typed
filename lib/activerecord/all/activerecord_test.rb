# typed: true

module ActiveRecordAssociationsTest
  extend ActiveRecord::Associations::ClassMethods

  has_many :people
  has_many :people, inverse_of: "person"
  has_many :people, inverse_of: :person
  has_many :people, inverse_of: false
  has_many :people, -> { true }, class_name: "Person"
  has_many :people_where_scope_is_called_with_instance, ->(instance) { true }, dependent: :destroy
  has_many :tracks, dependent: :destroy
  has_many :comments, dependent: :nullify
  has_many :tags, as: :taggable
  has_many :subscribers, through: :subscriptions, source: :user

  has_one :credit_card
  has_one :credit_card, inverse_of: "credit_card"
  has_one :credit_card, inverse_of: :credit_card
  has_one :credit_card, inverse_of: false
  has_one :credit_card, dependent: :destroy
  has_one :credit_card, dependent: :nullify
  has_one :last_comment, class_name: "Comment"
  has_one :attachment, as: :attachable
  has_one :club, through: :membership
  has_one :primary_address, -> { true }, through: :addressables, source: :addressable
  has_one :credit_card, required: true

  has_and_belongs_to_many :projects, after_add: [:foo, Proc.new { }]
  has_and_belongs_to_many :projects, -> { true }
  has_and_belongs_to_many :nations, class_name: "Country", after_add: :foo
  has_and_belongs_to_many :categories, join_table: "prods_cats"

  belongs_to :firm, foreign_key: "client_of", inverse_of: false
  belongs_to :firm, foreign_key: "client_of", inverse_of: "firms"
  belongs_to :firm, foreign_key: "client_of", inverse_of: :firms
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
class AcceptsNestedAttributesTest < ApplicationRecord
  has_many :people
  accepts_nested_attributes_for :people
  accepts_nested_attributes_for :people, update_only: true
  accepts_nested_attributes_for :people, reject_if: :all_blank
  accepts_nested_attributes_for :people, reject_if: :calculate_reject_if
  accepts_nested_attributes_for :people, reject_if: ->(p) { p[:title].blank? }
  accepts_nested_attributes_for :people, reject_if: Proc.new { |p| p[:title].blank? }
  accepts_nested_attributes_for :people, allow_destroy: true
  accepts_nested_attributes_for :people, :places
  accepts_nested_attributes_for :people, limit: 1
  accepts_nested_attributes_for :people, limit: :calculate_limit
  accepts_nested_attributes_for :people, limit: -> { rand(1..10) }
  accepts_nested_attributes_for :people, limit: Proc.new { rand(1..10) }
end
class ActiveRecordCallbacksTest < ApplicationRecord
  before_save :normalize_card_number, if: :paid_with_card?
  before_save :normalize_card_number, if: Proc.new { |order| order.paid_with_card? }
  before_save :log_save_action
  before_save :first_action, :second_action
  before_save { puts 'foo' }
  around_save :log_save_action
  around_save :first_action, :second_action
  around_save { puts 'foo' }
  after_save :log_save_action
  after_save :first_action, :second_action
  after_save { puts 'foo' }

  before_destroy :log_destroy_action, prepend: true
  before_destroy :first_action, :second_action
  before_destroy { puts 'foo' }
  around_destroy :log_destroy_action
  around_destroy :first_action, :second_action
  around_destroy { puts 'foo' }
  after_destroy :log_destroy_action
  after_destroy :first_action, :second_action
  after_destroy { puts 'foo' }

  before_update :log_update_action
  before_update :first_action, :second_action
  before_update { puts 'foo' }
  around_update :log_update_action
  around_update :first_action, :second_action
  around_update { puts 'foo' }
  after_update :log_update_action
  after_update :first_action, :second_action
  after_update { puts 'foo' }

  before_create :log_create_action
  before_create :first_action, :second_action
  before_create { puts 'foo' }
  around_create :log_create_action
  around_create :first_action, :second_action
  around_create { puts 'foo' }
  after_create :log_create_action
  after_create :first_action, :second_action
  after_create { puts 'foo' }
  after_create :send_email_to_author, if: :author_wants_emails?, unless: Proc.new { |comment| comment.article.ignore_comments? }

  after_commit :log_commit_action
  after_commit :first_action, :second_action
  after_commit { puts 'foo' }
  after_commit :log_user_saved_to_db, on: :create
  after_commit :log_user_saved_to_db, on: [:create, :update]
  after_commit -> { :log_user_saved_to_db }, on: [:create, :update]

  before_validation :validation_setup
  before_validation :first_action, :second_action
  before_validation { puts 'foo' }
  before_validation :validation_setup, on: :create
  after_validation :validation_teardown
  after_validation :first_action, :second_action
  after_validation { puts 'foo' }
  after_validation :validation_teardown, on: [:create, :update]

  def do_the_thing
    if new_record? || persisted?
      save
      save(validate: false, touch: false)
      save!
      touch
      update!(did_the_thing: true)
    end
  end
end

class ActiveRecordValidationTest < ApplicationRecord
  # this is defined in ActiveModel::Validations, but we test here to ensure that it's actually accessible from an AR model
  validate :run_validation_method, :if => :should_validate?, prepend: true
  validates_absence_of :foo
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

  def test_transactions
    first_result = ActiveRecordCallbacksTest.transaction do
      1
    end

    T.assert_type!(first_result, Integer)

    second_result = ActiveRecordCallbacksTest.transaction(requires_new: true) do
      ['2']
    end

    T.assert_type!(second_result, T::Array[String])
  end

  def test_activerecord_instance_methods
    relation = ActiveRecord::Relation.new
    T.assert_type!(relation.blank?, T::Boolean)
    T.assert_type!(relation.empty?, T::Boolean)
    T.assert_type!(relation.any?, T::Boolean)
    T.assert_type!(relation.many?, T::Boolean)
    T.assert_type!(relation.one?, T::Boolean)
    T.assert_type!(relation.none?, T::Boolean)
    T.assert_type!(relation.size, Integer)

    relation.any? { |record| true }
    relation.many? { |record| true }
    relation.one? { |record| true }
    relation.none? { |record| true }
  end
end

class ActiveRecordBaseTest < ApplicationRecord
  self.inheritance_column = "typ"
  self.ignored_columns = ["foo"]

  def test_sanitize_sql
    ActiveRecord::Base.sanitize_sql(["where id IN ?", [1, 2, 3]])
  end

  def test_sanitize_sql_for_assignment
    ActiveRecord::Base.sanitize_sql_for_assignment(['(?)', 1])
  end

  def test_column_defaults
    self.class.column_defaults
  end
end

class ActiveRecordStoreTest < ApplicationRecord
  store_accessor :options, :value1
  store_accessor :options, [:value1, :value2]
  store_accessor :options, :value1, prefix: true, suffix: true
  store_accessor :options, :value1, prefix: 'pref', suffix: 'suf'
  store_accessor :options, :value1, prefix: :pref, suffix: :suf

  store :options, accessors: :value1

  stored_attributes
end

# typed: true

module ActiveModelTest
  include ActiveModel::Validations
  include ActiveModel::Validations::HelperMethods

  validates :bio, length: { maximum: 1000,
    too_long: "%{count} characters is the maximum allowed" }

  validates :name, length: { minimum: 2 }
  validates :bio, length: { maximum: 500 }
  validates :password, length: { in: 6..20 }
  validates :registration_number, length: { is: 6 }

  validates :points, numericality: true
  validates :games_played, numericality: { only_integer: true }

  validates :name, :login, :email, presence: true
  validates :order, presence: true

  validates :name, :login, :email, absence: true

  validates :email, uniqueness: true
  validates :name, uniqueness: { scope: :year,
    message: "should happen once per year" }

  validates :boolean_field_name, inclusion: { in: [true, false] }
  validates :boolean_field_name, exclusion: { in: [nil] }
  validates :name, uniqueness: { case_sensitive: false }

  validates :title, length: { is: 5 }, allow_blank: true
  validates :size, inclusion: { in: %w(small medium large),
    message: "%{value} is not a valid size" }, allow_nil: true

  validates :age, numericality: { message: "%{value} seems wrong" }

  validates :age, numericality: true, on: :update
  validates :age, numericality: true, on: [:create, :update]

  validates :token, presence: true, uniqueness: true, strict: TokenGenerationException

  validates :card_number, presence: true, if: :paid_with_card?

  # Allow custom validators to be added from other gems.
  validates :custom_validator, foo: true
  validates :custom_validator, foo: { option: 1 }
  validates :custom_validator, foo: ['bar']
  validates :custom_validator, foo: 'bar'
  validates :custom_validator, foo: :bar

  # TODO: These are valid but currently fail typechecking.
  # validates :password, confirmation: true, unless: Proc.new { |a| a.password.blank? }
  # validates :name, presence: { strict: true }
  # validates :password, confirmation: true, unless: -> { true }

  # Test a variety of uses for the ActiveModel validation methods.
  validate :custom_method_name, on: [:create, :update]
  validates_absence_of :first_name, on: [:create, :update]
  validates_acceptance_of :eula, message: 'must be abided', on: [:create, :update]
  validates_confirmation_of :email_address, message: 'should match confirmation', on: [:create, :update]
  validates_exclusion_of :username, in: %w( admin superuser ), message: "You don't belong here"
  validates_exclusion_of :age, in: 30..60, message: 'This site is only for under 30 and over 60'
  validates_exclusion_of :format, in: %w( mov avi ), message: "extension %{value} is not allowed"
  validates_exclusion_of :password, in: ->(person) { [person.username, person.first_name] },
                        message: 'should not be the same as your username or first name'
  validates_exclusion_of :karma, in: :reserved_karmas, on: [:create, :update]
  validates_length_of :phone, in: 7..32, allow_blank: true, on: [:create, :update]
  validates_inclusion_of :gender, in: %w( m f )
  validates_inclusion_of :age, in: 0..99
  validates_inclusion_of :boolean_field_name, in: [true, false]
  validates_inclusion_of :format, in: %w( jpg gif png ), message: "extension %{value} is not included in the list"
  validates_inclusion_of :states, in: ->(person) { STATES[person.country] }
  validates_inclusion_of :karma, in: :available_karmas, on: [:create, :update]
  validates_format_of :screen_name, with: ->(person) { person.admin? ? /\A[a-z0-9][a-z0-9_\-]*\z/i : /\A[a-z][a-z0-9_\-]*\z/i }
  validates_format_of :email, without: /NOSPAM/, on: [:create, :update]
  validates_numericality_of :width, less_than: ->(person) { person.height }
  validates_numericality_of :width, greater_than: :minimum_weight, on: [:create, :update]
  validates_presence_of :first_name, on: [:create, :update]
end

class Person
  include ActiveModel::Validations
end

class ActiveModelErrorsTest
  person = Person.new
  person.errors.add(:name)
  person.errors.add(:name, :invalid, strict: true)
  person.errors.add(:name, :invalid, strict: NameIsInvalid)
  person.errors.add(:name, :too_long, { count: 25 })
  person.errors.add(:base, :name_or_email_blank, message: "either name or email must be present")
  person.errors.of_kind?(:age)
  person.errors.of_kind?(:name, :too_long)
  person.errors.of_kind?(:name, "is too long (maximum is 25 characters)")
  person.errors.full_messages
  person.errors.added?(:name, :too_long, count: 25)
  person.errors.added?(:name, "is too long (maximum is 25 characters)")
  person.errors.added?(:name, :too_long, count: 24)
  person.errors.added?(:name, "is too long")
end

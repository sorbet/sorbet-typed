# typed: true

module ActiveModelTest
  extend ActiveModel::Validations::HelperMethods

  # Test a variety of uses for the ActiveModel validation methods.
  validates_absence_of :first_name
  validates_acceptance_of :eula, message: 'must be abided'
  validates_confirmation_of :email_address, message: 'should match confirmation'
  validates_exclusion_of :username, in: %w( admin superuser ), message: "You don't belong here"
  validates_exclusion_of :age, in: 30..60, message: 'This site is only for under 30 and over 60'
  validates_exclusion_of :format, in: %w( mov avi ), message: "extension %{value} is not allowed"
  validates_exclusion_of :password, in: ->(person) { [person.username, person.first_name] },
                        message: 'should not be the same as your username or first name'
  validates_exclusion_of :karma, in: :reserved_karmas
  validates_length_of :phone, in: 7..32, allow_blank: true
  validates_inclusion_of :gender, in: %w( m f )
  validates_inclusion_of :age, in: 0..99
  validates_inclusion_of :format, in: %w( jpg gif png ), message: "extension %{value} is not included in the list"
  validates_inclusion_of :states, in: ->(person) { STATES[person.country] }
  validates_inclusion_of :karma, in: :available_karmas
  validates_format_of :screen_name, with: ->(person) { person.admin? ? /\A[a-z0-9][a-z0-9_\-]*\z/i : /\A[a-z][a-z0-9_\-]*\z/i }
  validates_format_of :email, without: /NOSPAM/
  validates_numericality_of :width, less_than: ->(person) { person.height }
  validates_numericality_of :width, greater_than: :minimum_weight
  validates_presence_of :first_name
end

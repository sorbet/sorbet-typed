# typed: strong

class Stripe::Account < Stripe::APIResource
  Elem = type_member(fixed: [Symbol, T.untyped])

  sig { returns(String) }
  def id; end

  sig { returns(String) }
  def object; end

  sig { returns(T.nilable(String)) }
  def business_logo; end

  sig { returns(T.nilable(String)) }
  def business_logo_large; end

  sig { returns(T.nilable(String)) }
  def business_name; end

  sig { returns(T.nilable(String)) }
  def business_primary_color; end

  sig { returns(T.nilable(String)) }
  def business_url; end

  sig { returns(Stripe::ListObject[Stripe::Capability]) }
  def capabilities; end

  sig { returns(T::Boolean) }
  def charges_enabled; end

  sig { returns(T.untyped) }
  def company; end

  sig { returns(String) }
  def country; end

  sig { returns(Integer) }
  def created; end

  sig { returns(T::Boolean) }
  def debit_negative_balances; end

  sig { returns(T.untyped) }
  def decline_charge_on; end

  sig { returns(T.nilable(String)) }
  def default_currency; end

  sig { returns(T::Boolean) }
  def details_submitted; end

  sig { returns(T.nilable(String)) }
  def display_name; end

  sig { returns(T.nilable(String)) }
  def email; end

  sig { returns(Stripe::ListObject[T.any(Stripe::BankAccount, Stripe::Card)]) }
  def external_accounts; end

  sig { returns(T.untyped) }
  def legal_entity; end

  sig { returns(T.nilable(String)) }
  def mcc; end

  sig { returns(T.untyped) }
  def metadata; end

  sig { params(arg0: T.nilable(T::Hash[T.untyped, T.untyped])).void }
  def metadata=(arg0); end

  # https://stripe.com/docs/connect/payouts#payout-schedule
  sig { returns(T.untyped) }
  def payout_schedule; end

  sig { returns(T.untyped) }
  def payout_statement_descriptor; end

  sig { returns(T::Boolean) }
  def payouts_enabled; end

  sig { returns(T.nilable(String)) }
  def product_description; end

  sig { params(arg0: T::Array[String]).void }
  def requested_capabilities=(arg0); end

  sig { returns(T.untyped) }
  def requirements; end

  sig { returns(T.untyped) }
  def statement_descriptor; end

  sig { params(arg0: T.nilable(String)).void }
  def statement_descriptor=(arg0); end

  sig { returns(T.nilable(String)) }
  def statement_descriptor_kana; end

  sig { returns(T.nilable(String)) }
  def statement_descriptor_kanji; end

  sig { returns(T.untyped) }
  def support_address; end

  sig { returns(T.nilable(String)) }
  def support_email; end

  sig { returns(T.nilable(String)) }
  def support_phone; end

  sig { returns(T.nilable(String)) }
  def support_url; end

  sig { returns(T.nilable(String)) }
  def timezone; end

  sig { returns(T.untyped) }
  def tos_acceptance; end

  sig { returns(String) }
  def type; end

  sig { returns(T.untyped) }
  def verification; end

  sig do
    params(
      id: String,
      params: T.nilable(T::Hash[T.untyped, T.untyped]),
      opts: T.nilable(T::Hash[T.untyped, T.untyped])
    )
      .returns(Stripe::ListObject[Stripe::Capability])
  end
  def self.list_capabilities(id, params = nil, opts = nil); end
end

class Stripe::BankAccount < Stripe::APIResource
  Elem = type_member(fixed: [Symbol, T.untyped])

  sig { returns(T.nilable(String)) }
  def bank_name; end
end

class Stripe::BalanceTransaction
  sig { returns(String) }
  def id; end

  sig { returns(String) }
  def type; end

  sig { returns(String) }
  def source; end

  sig { returns(Integer) }
  def amount; end

  sig { returns(Integer) }
  def fee; end

  sig { returns(Integer) }
  def net; end

  sig { returns(Integer) }
  def created; end

  sig { params(id: String, opts: T.nilable(T::Hash[T.untyped, T.untyped])).returns(Stripe::BalanceTransaction) }
  def self.retrieve(id, opts={}); end
end

class Stripe::Capability < Stripe::APIResource
  Elem = type_member(fixed: [Symbol, T.untyped])

  sig { returns(Stripe::StripeObject) }
  def requirements; end

  sig { returns(String) }
  def status; end
end

class Stripe::Card < Stripe::APIResource
  Elem = type_member(fixed: [Symbol, T.untyped])

  sig { returns(String) }
  def id; end

  sig { returns(T.nilable(String)) }
  def address_line1; end

  sig { returns(T.nilable(String)) }
  def address_line2; end

  sig { returns(T.nilable(String)) }
  def address_city; end

  sig { returns(T.nilable(String)) }
  def address_state; end

  sig { returns(T.nilable(String)) }
  def address_zip; end

  sig { returns(T.nilable(String)) }
  def address_zip; end

  sig { returns(String) }
  def brand; end

  sig { params(other: String).returns(String) }
  def brand=(other); end

  sig { returns(Integer) }
  def exp_month; end

  sig { params(other: Integer).returns(Integer) }
  def exp_month=(other); end

  sig { returns(Integer) }
  def exp_year; end

  sig { params(other: Integer).returns(Integer) }
  def exp_year=(other); end

  sig { returns(String) }
  def last4; end

  sig { params(other: String).returns(String) }
  def last4=(other); end

  sig { returns(String) }
  def country; end

  sig { returns(String) }
  def fingerprint; end

  sig { returns(T.nilable(String)) }
  def name; end

  sig { params(id: String, opts: T.nilable(T::Hash[T.untyped, T.untyped])).returns(Stripe::Card) }
  def self.retrieve(id, opts={}); end
end

class Stripe::Charge < Stripe::APIResource
  Elem = type_member(fixed: [Symbol, T.untyped])

  sig { params(args: T.untyped).returns(Stripe::Charge) }
  def self.create(*args); end

  sig { returns(String) }
  def id; end

  sig { returns(Integer) }
  def amount; end

  sig { returns(String) }
  def currency; end

  sig { returns(String) }
  def customer; end

  sig { returns(T.untyped) }
  def refunds; end

  sig { returns(T.untyped) }
  def invoice; end

  sig { returns(T.untyped) }
  def payment_intent; end

  sig { returns(String) }
  def payment_method; end

  sig { returns(T.untyped) }
  def failure_code; end

  sig { returns(T.untyped) }
  def failure_message; end

  sig { returns(T.untyped) }
  def metadata; end

  sig { returns(T.untyped) }
  def outcome; end

  sig { params(id: String, opts: T.nilable(T::Hash[T.untyped, T.untyped])).returns(Stripe::Charge) }
  def self.retrieve(id, opts={}); end
end

class Stripe::Customer < Stripe::APIResource
  Elem = type_member(fixed: [Symbol, T.untyped])

  sig { returns(Stripe::ListObject[Stripe::Source]) }
  def sources; end

  sig { returns(String) }
  def id; end

  sig { params(id: String, opts: T.nilable(T::Hash[T.untyped, T.untyped])).returns(Stripe::Customer) }
  def self.retrieve(id, opts={}); end

  sig { returns(String) }
  def name; end
end

class Stripe::Dispute < Stripe::APIResource
  Elem = type_member(fixed: [Symbol, T.untyped])

  sig { returns(Integer) }
  def amount; end

  sig { returns(String) }
  def charge; end

  sig { returns(String) }
  def currency; end

  sig { returns(T.untyped) }
  def evidence_details; end

  sig { returns(T::Boolean) }
  def is_charge_refundable; end

  sig { returns(String) }
  def reason; end

  sig { returns(String) }
  def status; end
end

class Stripe::ErrorObject
  Elem = type_member(fixed: [Symbol, T.untyped])

  sig { returns(T.nilable(String)) }
  def decline_code; end
end

class Stripe::Event < Stripe::APIResource
  Elem = type_member(fixed: [Symbol, T.untyped])

  sig { returns(String) }
  def id; end

  sig { returns(String) }
  def type; end

  sig { returns(String) }
  def object; end

  sig { returns(Data) }
  def data; end

  class Data < Stripe::StripeObject
    Elem = type_member(fixed: [Symbol, T.untyped])

    sig { returns(Stripe::StripeObject) }
    def object; end

    # only included with '*.updated' events
    sig { returns(Stripe::StripeObject) }
    def previous_attributes; end
  end

  private_constant :Data

  sig { returns(Integer) }
  def created; end
end

class Stripe::Invoice < Stripe::APIResource
  Elem = type_member(fixed: [Symbol, T.untyped])

  sig { returns(Stripe::ListObject[Stripe::InvoiceLineItem]) }
  def lines; end

  sig { returns(T.nilable(String)) }
  def charge; end

  sig { returns(String) }
  def currency; end

  sig { returns(String) }
  def description; end

  sig { returns(T.nilable(String)) }
  def subscription; end
end

class Stripe::InvoiceItem < Stripe::APIResource
  Elem = type_member(fixed: [Symbol, T.untyped])

  sig { returns(Integer) }
  def amount; end

  sig { returns(String) }
  def currency; end

  sig { returns(String) }
  def description; end
end

class Stripe::InvoiceLineItem < Stripe::StripeObject
  Elem = type_member(fixed: [Symbol, T.untyped])

  sig { returns(Integer) }
  def amount; end

  sig { returns(String) }
  def currency; end

  sig { returns(String) }
  def description; end

  sig { returns(String) }
  def type; end
end

class Stripe::ListObject < Stripe::StripeObject
  extend T::Sig
  extend T::Helpers
  extend T::Generic
  include Enumerable

  Elem = type_member(upper: Stripe::StripeObject)

  sig { params(values: T.untyped, opts: T.untyped).returns(T.attached_class) }
  def self.construct_from(values, opts = nil); end

  sig { returns(Integer) }
  def total_count; end

  sig { returns(T::Array[Elem]) }
  def data; end
end

class Stripe::PaymentIntent < Stripe::APIResource
  Elem = type_member(fixed: [Symbol, T.untyped])

  sig { returns(String) }
  def status; end

  sig { returns(T.nilable(String)) }
  def client_secret; end

  sig { returns(Stripe::StripeObject) }
  def metadata; end
end

class Stripe::Payout < Stripe::APIResource
  Elem = type_member(fixed: [Symbol, T.untyped])

  sig { returns(String) }
  def id; end

  sig { returns(Integer) }
  def created; end

  sig { returns(Integer) }
  def arrival_date; end

  sig { returns(Integer) }
  def amount; end

  sig { returns(String) }
  def destination; end

  sig { returns(String) }
  def currency; end

  sig { returns(String) }
  def description; end

  sig { returns(String) }
  def status; end

  sig { returns(String) }
  def type; end

  sig { params(args: T.untyped).returns(Stripe::Payout) }
  def self.create(*args); end

  sig { params(id: String, opts: T.nilable(T::Hash[T.untyped, T.untyped])).returns(Stripe::Payout) }
  def self.retrieve(id, opts={}); end
end

class Stripe::Person < Stripe::APIResource
  Elem = type_member(fixed: [Symbol, T.untyped])

  # Warning: JP Stripe::Persons do _not_ have an `address`
  sig { returns(T.untyped) }
  def address; end

  # Warning: Only JP Stripe::Persons have an `address`
  sig { returns(T.untyped) }
  def address_kana; end

  # Warning: Only JP Stripe::Persons have an `address`
  sig { returns(T.untyped) }
  def address_kanji; end

  sig { returns(Requirements) }
  def requirements; end

  sig { returns(Verification) }
  def verification; end

  sig { returns(String) }
  def first_name; end

  sig { returns(String) }
  def last_name; end

  sig { returns(T.nilable(DateOfBirth)) }
  def dob; end

  class Requirements < Stripe::StripeObject
    Elem = type_member(fixed: [Symbol, T::Array[String]])

    sig { returns(T::Array[String]) }
    def currently_due; end

    sig { returns(T::Array[String]) }
    def eventually_due; end

    sig { returns(T::Array[String]) }
    def past_due; end

    sig { returns(T::Array[String]) }
    def pending_verification; end
  end

  private_constant :Requirements

  class Verification < Stripe::StripeObject
    Elem = type_member(fixed: [Symbol, T.untyped])

    sig { returns(String) }
    def status; end

    sig { returns(T.nilable(String)) }
    def details; end

    sig { returns(T.nilable(String)) }
    def details_code; end

    sig { returns(Document) } # old versions of the API return a String here (pre -2019-02-19)
    def document; end

    sig { returns(Document) }
    def additional_document; end

    class Document < Stripe::StripeObject
      Elem = type_member(fixed: [Symbol, T.untyped])

      sig { returns(T.nilable(String)) }
      def details; end

      sig { returns(T.nilable(String)) }
      def details_code; end

      sig { returns(T.nilable(String)) }
      def front; end

      sig { params(arg0: T.nilable(String)).void }
      def front=(arg0); end

      sig { returns(T.nilable(String)) }
      def back; end

      sig { params(arg0: T.nilable(String)).void }
      def back=(arg0); end
    end

    private_constant :Document
  end

  private_constant :Verification

  class DateOfBirth < Stripe::StripeObject
    Elem = type_member(fixed: [Symbol, T.untyped])

    sig { returns(Integer) }
    def day; end

    sig { returns(Integer) }
    def month; end

    sig { returns(Integer) }
    def year; end
  end

  private_constant :DateOfBirth
end

class Stripe::Refund < Stripe::APIResource
  Elem = type_member(fixed: [Symbol, T.untyped])

  sig { returns(String) }
  def id; end

  sig { returns(String) }
  def charge; end

  sig { returns(String) }
  def status; end

  sig { params(args: T.untyped).returns(Stripe::Refund) }
  def self.create(*args); end

  sig { params(id: String, opts: T.nilable(T::Hash[T.untyped, T.untyped])).returns(Stripe::Refund) }
  def self.retrieve(id, opts={}); end
end

class Stripe::SetupIntent < Stripe::APIResource
  Elem = type_member(fixed: [Symbol, T.untyped])

  sig { returns(String) }
  def status; end

  sig { returns(T.nilable(String)) }
  def client_secret; end

  sig { returns(String) }
  def payment_method; end
end

class Stripe::Source < Stripe::APIResource
  Elem = type_member(fixed: [Symbol, T.untyped])

  sig { params(args: T.untyped).returns(Stripe::Source) }
  def self.retrieve(*args); end

  sig { returns(T.untyped) }
  def owner; end
end

class Stripe::StripeError
  sig { returns(T.nilable(String)) }
  def code; end

  sig { returns(Stripe::ErrorObject) }
  def error; end
end

class Stripe::StripeObject
  Elem = type_member(fixed: T.untyped)

  sig { returns(String) }
  def id; end

  sig { returns(T::Hash[Symbol, T.untyped]) }
  def to_hash; end

  sig do
    params(
      values: T::Hash[T.untyped, T.untyped], opts: T.untyped, dirty: T::Boolean
    )
      .returns(T::Boolean)
  end
  def update_attributes(values, opts = {}, dirty: true); end
end

class Stripe::Subscription < Stripe::APIResource
  Elem = type_member(fixed: [Symbol, T.untyped])

  sig { returns(String) }
  def status; end
end

class Stripe::Transfer < Stripe::APIResource
  Elem = type_member(fixed: [Symbol, T.untyped])

  sig { params(args: T.untyped).returns(Stripe::Transfer) }
  def self.create(*args); end

  sig { returns(Stripe::ListObject[Stripe::StripeObject]) }
  def reversals; end
end

class Stripe::Token < Stripe::APIResource
  Elem = type_member(fixed: [Symbol, T.untyped])

  sig { returns(T.nilable(Stripe::Card)) }
  def card; end
end

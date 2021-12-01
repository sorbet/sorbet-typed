# typed: true

# typed: true
# frozen_string_literal: true

module Stripe
  class StripeObject
    extend T::Sig

    sig { returns(T.any(Stripe::Subscription, Stripe::Customer, Stripe::Invoice)) }
    def object; end

    sig { returns(T.untyped).params(key: T.any(String, Symbol)) }
    def [](key); end
  end

  class ListObject
    sig { returns(Array) }
    def data; end

    sig { returns(T::Boolean) }
    def has_more; end
  end

  class Address < StripeObject
    sig { returns(String) }
    def city; end

    sig { returns(String) }
    def country; end

    sig { params(arg: String).void }
    def country=(arg); end

    sig { returns(String) }
    def line1; end

    sig { returns(String) }
    def line2; end

    sig { returns(String) }
    def postal_code; end

    sig { params(arg: String).void }
    def postal_code=(arg); end

    sig { returns(String) }
    def state; end
  end

  class BillingDetails < StripeObject
    sig { returns(Stripe::Address) }
    def address; end

    sig { returns(T.nilable(String)) }
    def email; end

    sig { returns(T.nilable(String)) }
    def name; end

    sig { returns(T.nilable(String)) }
    def phone; end
  end

  class Source < APIResource
    sig { params(id: T.any(String, T::Hash[Symbol, T.untyped]), opts: T.nilable(T::Hash[Symbol, T.untyped])).returns(Stripe::Source) }
    def self.retrieve(id, opts = nil); end
  end

  class Card < APIResource
    sig { returns(String) }
    def country; end

    sig { returns(String) }
    def exp_month; end

    sig { returns(String) }
    def exp_year; end

    sig { returns(String) }
    def last4; end
  end

  class APIResource < StripeObject
    extend T::Sig

    sig { returns(APIResource) }
    def refresh; end

    sig { returns(String) }
    def id; end

    # not all objects, at all times have metadata (deleted customers for instance)
    sig { returns(T::Hash[T.any(String, Symbol), T.untyped]) }
    def metadata; end

    sig { void.params(val: T::Hash[T.any(String, Symbol), T.untyped]) }
    def metadata=(val); end

    sig { returns(APIResource).params(id: T.any(String, T::Hash[Symbol, T.untyped]), opts: T.nilable(T::Hash[Symbol, T.untyped])) }
    def self.retrieve(id, opts = nil); end
  end

  class PaymentMethod < APIResource
    sig { returns(Stripe::Card) }
    def card; end

    sig { returns(Stripe::BillingDetails) }
    def billing_details; end

    sig { returns(String) }
    def type; end

    sig { params(id: T.any(String, T::Hash[Symbol, T.untyped]), opts: T.nilable(T::Hash[Symbol, T.untyped])).returns(Stripe::PaymentMethod) }
    def self.retrieve(id, opts = nil); end
  end

  class InvoiceSettings < StripeObject
    sig { returns(T.nilable(T.any(String, PaymentMethod))) }
    def default_payment_method; end

    sig { params(arg: String).void }
    def default_payment_method=(arg); end
  end

  class Customer < APIResource
    sig { returns(String) }
    def default_source; end

    sig { params(arg: String).void }
    def default_source=(arg); end

    sig { returns(Stripe::ListObject) }
    def sources; end

    sig { returns(Stripe::InvoiceSettings) }
    def invoice_settings; end

    sig { void.params(token: String) }
    def payment_method=(token); end

    sig { void.params(settings: T::Hash[Symbol, T.untyped]) }
    def invoice_settings=(settings); end

    sig { returns(T.nilable(Stripe::Address)) }
    def address; end

    sig { params(arg: Hash).void }
    def address=(arg); end

    sig { returns(String) }
    def name; end

    sig { returns(Integer) }
    def account_balance; end

    sig { params(arg: Integer).void }
    def account_balance=(arg); end

    sig { returns(Stripe::ListObject) }
    def subscriptions; end

    sig { returns(T.nilable(String)) }
    def email; end

    sig { returns(Customer).params(id: T.any(String, T::Hash[Symbol, T.any(String, T::Array[String])]), opts: T.nilable(T::Hash[Symbol, T.untyped])) }
    def self.retrieve(id, opts = nil); end
  end

  class Discount
    sig { returns(Stripe::Coupon) }
    def coupon; end
  end

  class Coupon < APIResource
    sig { params(id: T.any(String, T::Hash[Symbol, T.untyped]), opts: T.nilable(T::Hash[Symbol, T.untyped])).returns(Stripe::Coupon) }
    def self.retrieve(id, opts = nil); end

    sig { returns(T.nilable(String)) }
    def name; end
  end

  class PaymentIntent < APIResource
    sig { returns(String) }
    def client_secret; end

    sig { returns(String) }
    def status; end

    sig { returns(Stripe::ListObject) }
    def charges; end

    sig { returns(Stripe::ListObject) }
    def line_items; end

    sig { returns(PaymentIntent).params(id: T.any(String, T::Hash[Symbol, T.any(String, T::Array[String])]), opts: T.nilable(T::Hash[Symbol, T.untyped])) }
    def self.retrieve(id, opts = nil); end
  end

  class Invoice < APIResource
    sig { returns(T.nilable(Stripe::PaymentIntent)) }
    def payment_intent; end

    sig { returns(Integer) }
    def amount_paid; end

    sig { returns(String) }
    def status; end

    sig { returns(String) }
    def customer; end

    sig { returns(Stripe::Invoice).params(id: T.any(String, T::Hash[Symbol, T.untyped]), opts: T.nilable(T::Hash[Symbol, T.untyped])) }
    def self.retrieve(id, opts = nil); end

    sig { returns(Stripe::ListObject) }
    def lines; end

    sig { returns(String) }
    def currency; end

    sig { returns(Integer) }
    def total; end

    sig { returns(T.any(String, Stripe::Charge)) }
    def charge; end

    sig { returns(T::Boolean)}
    def paid; end

    sig { params(other: T::Boolean).void }
    def paid=(other); end

    sig { returns(String) }
    def billing; end

    sig { returns(Integer) }
    def subtotal; end

    def status_transitions; end
  end

  class InvoiceItem < APIResource
    sig { params(id: T.any(String, T::Hash[Symbol, T.untyped]), opts: T.nilable(T::Hash[Symbol, T.untyped])).returns(Stripe::InvoiceItem) }
    def self.retrieve(id, opts = nil); end

    sig { returns(T.nilable(Stripe::Plan)) }
    def plan; end

    sig { returns(T.nilable(String))}
    def description; end

    sig { returns(T.any(Stripe::Customer, String))}
    def customer; end

    sig { returns(T.any(Stripe::Invoice, String))}
    def invoice; end

    # unsure how to represent a StripeObject with specific keys/mmethods without causing typing errors
    def period; end
  end

  class Plan < APIResource
    # unsure how to represent a StripeObject with specific keys/mmethods without causing typing errors
    def period; end

    sig { returns(T.any(String, Stripe::Product))}
    def product; end

    sig { returns(Stripe::Plan).params(id: T.any(String, T::Hash[Symbol, T.untyped]), opts: T.nilable(T::Hash[Symbol, T.untyped])) }
    def self.retrieve(id, opts={}); end
  end

  class Product < APIResource
    sig { returns(Stripe::Product).params(id: T.any(String, T::Hash[Symbol, T.untyped]), opts: T.nilable(T::Hash[Symbol, T.untyped])) }
    def self.retrieve(id, opts={}); end

    sig { returns(String) }
    def name; end

    sig { returns(T.nilable(String)) }
    def description; end

    sig { returns(T::Boolean) }
    def shippable; end
  end

  class TaxRate < APIResource
    sig { returns(T.nilable(String)) }
    def description; end

    sig { returns(String) }
    def display_name; end

    sig { returns(Integer) }
    def percentage; end
  end

  class Subscription < APIResource
    extend T::Sig

    sig { void.params(val: T::Array[T::Hash[Symbol, T.untyped]]) }
    def items=(val); end

    sig { void.params(val: T.any(String, ::Stripe::Customer)) }
    def customer=(val); end

    sig { void.params(val: String) }
    def payment_behavior=(val); end

    sig { void.params(val: Integer) }
    def trial_end=(val); end

    sig { returns(T.nilable(T.any(T.nilable(Stripe::Invoice), T.nilable(String)))) }
    def latest_invoice; end

    sig { returns(Subscription).params(id: T.any(String, T::Hash[Symbol, T.untyped]), opts: T.nilable(T::Hash[Symbol, T.untyped])) }
    def self.retrieve(id, opts = nil); end
  end

  class CreditNote < APIResource
    sig { returns(Integer) }
    def total; end

    sig { returns(Integer) }
    def created; end

    sig { returns(Integer) }
    def voided_at; end

    sig { returns(T.nilable(Integer)) }
    def out_of_band_amount; end

    sig { returns(String) }
    def currency; end

    sig { returns(T.any(String, Stripe::Customer)) }
    def customer; end

    sig { returns(T.any(String, Stripe::Invoice)) }
    def invoice; end

    sig { returns(Stripe::ListObject) }
    def lines; end

    sig { returns(Array) }
    def tax_amounts; end

    sig { returns(Array) }
    def discount_amounts; end

    sig { returns(T.nilable(Stripe::CustomerBalanceTransaction)) }
    def customer_balance_transaction; end

    sig { returns(T.nilable(Stripe::Refund)) }
    def refund; end

    sig { returns(Stripe::CreditNote).params(id: T.any(String, T::Hash[Symbol, T.untyped]), opts: T.nilable(T::Hash[Symbol, T.untyped])) }
    def self.retrieve(id, opts = nil); end
  end

  class CreditNoteLineItem
    sig { returns(String) }
    def currency; end

    sig { returns(Integer) }
    def amount; end

    sig { returns(Integer) }
    def quantity; end

    sig { returns(T.nilable(String))}
    def invoice_line_item; end

    sig { returns(String)}
    def type; end

    sig { returns(T.nilable(String))}
    def description; end
  end

  class CustomerBalanceTransaction < APIResource
    sig { returns(Integer) }
    def amount; end

    sig { returns(Integer) }
    def created; end

    sig { returns(T.nilable(String)) }
    def credit_note; end

    sig { returns(String) }
    def currency; end

    sig { returns(String) }
    def customer; end

    sig { returns(Integer) }
    def ending_balance; end

    sig { returns(T.nilable(String)) }
    def invoice; end

    sig { returns(String) }
    def type; end
  end

  class Event < APIResource
    extend T::Sig

    sig { returns(String) }
    def type; end

    sig { returns(Stripe::StripeObject) }
    def data; end

    sig { returns(T::Boolean) }
    def livemode; end

    sig { returns(Event).params(id: T.any(String, T::Hash[Symbol, T.untyped]), opts: T.nilable(T::Hash[Symbol, T.untyped])) }
    def self.retrieve(id, opts = nil); end
  end

  class BankAccount < APIResource
    sig {returns(String)}
    def fingerprint; end

    sig { returns(String) }
    def bank_name; end

    sig { returns(String) }
    def routing_number; end

    sig { returns(String) }
    def last4; end
  end

  class StripeError
    extend T::Sig

    sig { returns(T.nilable(String)) }
    def message; end

    sig { returns(T.nilable(String)) }
    def code; end
  end

  class InvalidRequestError < StripeError; end
  class CardError < StripeError; end
  class APIConnectionError < StripeError; end
  class APIError < StripeError; end
end

class Stripe::Token
  sig { returns(Stripe::Token).params(id: T.any(String, T::Hash[Symbol, T.untyped]), opts: T.nilable(T::Hash[Symbol, T.untyped])) }
  def self.retrieve(id, opts = nil); end

  sig { returns(String) }
  def type; end

  sig { returns(Stripe::BankAccount) }
  def bank_account; end
end

class Stripe::Card < Stripe::APIResource
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

  sig { params(id: String, opts: T.nilable(T::Hash[T.untyped, T.untyped])).returns(Stripe::Card) }
  def self.retrieve(id, opts={}); end
end

class Stripe::Refund < Stripe::APIResource
  sig { params(id: T.any(String, T::Hash[Symbol, T.any(String, T::Array[String])]), opts: T.nilable(T::Hash[T.untyped, T.untyped])).returns(Stripe::Refund) }
  def self.retrieve(id, opts={}); end

  sig { returns(String) }
  def charge; end

  sig { returns(Integer) }
  def amount; end

  sig { returns(T.nilable(T.any(String, Stripe::CreditNote)))}
  def credit_note; end

  sig { returns(String)}
  def currency; end

  sig { returns(Integer)}
  def created; end
end

class Stripe::Dispute < Stripe::APIResource
  sig { returns(T.nilable(String)) }
  def balance_transaction; end

  sig { returns(Integer) }
  def created; end

  sig { returns(Integer) }
  def amount; end

  sig { returns(T::Array[Stripe::BalanceTransaction]) }
  def balance_transactions; end
end

class Stripe::ChargeOutcome < Stripe::StripeObject
  sig { returns(String) }
  def network_status; end

  sig { returns(String) }
  def risk_level; end

  sig { returns(String) }
  def type; end

  sig { returns(String) }
  def reason; end

  sig { returns(String) }
  def seller_message; end
end

class Stripe::Charge < Stripe::APIResource
  sig { returns(Stripe::ListObject) }
  def refunds; end

  sig { returns(Integer) }
  def amount_captured; end

  sig { returns(T.nilable(T.any(Stripe::Source, Stripe::Card)))}
  def source; end

  sig { returns(T.nilable(String))}
  def failure_message; end

  sig { returns(T.any(Stripe::Dispute, String)) }
  def dispute; end

  sig { params(id: T.any(String, T::Hash[Symbol, T.untyped]), opts: T.nilable(T::Hash[T.untyped, T.untyped])).returns(Stripe::Charge) }
  def self.retrieve(id, opts={}); end

  sig { returns(T::Boolean) }
  def captured; end

  sig { returns(T::Boolean) }
  def refunded; end

  sig { returns(Integer) }
  def created; end

  sig { returns(T.nilable(T.any(String, Stripe::ApplicationFee))) }
  def application_fee; end

  sig { returns(T.nilable(Stripe::BalanceTransaction)) }
  def balance_transaction; end

  sig { returns(T::Boolean) }
  def paid; end

  sig { returns(String) }
  def status; end

  sig { returns(Stripe::ChargeOutcome) }
  def outcome; end

  sig { returns(Integer) }
  def amount; end

  sig { returns(String) }
  def currency; end

  sig { returns(String) }
  def statement_descriptor; end

  sig { returns(T.nilable(String)) }
  def description; end

  sig { returns(T.any(String, Stripe::PaymentIntent)) }
  def payment_intent; end

  sig { returns(T.nilable(T.any(String, Stripe::Customer)))}
  def customer; end
end

class Stripe::Payout < Stripe::APIResource
  sig { returns(Integer) }
  def created; end

  sig { returns(Integer) }
  def arrival_date; end

  sig { returns(Integer) }
  def amount; end

  sig { params(id: T.any(String, T::Hash[Symbol, T.any(String, T::Array[String])]), opts: T.nilable(T::Hash[T.untyped, T.untyped])).returns(Stripe::Payout) }
  def self.retrieve(id, opts={}); end
end

class Stripe::BalanceTransaction < Stripe::APIResource
  sig { returns(String) }
  def type; end

  sig { returns(String)}
  def currency; end

  # if resource is expanded, the actual object is returned
  sig { returns(T.any(String, Stripe::Charge, Stripe::Refund))}
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

class Stripe::ApplicationFee < Stripe::APIResource
  sig { returns(String) }
  def id; end
end

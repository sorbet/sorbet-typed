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

  class Address < StripeObject
    extend T::Sig

    sig { returns(String) }
    def city; end

    sig { returns(String) }
    def country; end

    sig { returns(String) }
    def line1; end

    sig { returns(String) }
    def line2; end

    sig { returns(String) }
    def postal_code; end

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

  class Card < Stripe::APIResource
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

    sig { returns(T::Hash[Symbol, T.untyped]) }
    def metadata; end

    sig { void.params(val: T::Hash[Symbol, T.untyped]) }
    def metadata=(val); end

    sig { returns(APIResource).params(id: T.any(String, T::Hash[Symbol, T.untyped]), opts: T.nilable(T::Hash[Symbol, T.untyped])) }
    def self.retrieve(id, opts = nil); end
  end

  class PaymentMethod < APIResource
    sig { returns(Stripe::Card) }
    def card; end

    sig { returns(Stripe::BillingDetails) }
    def billing_details; end
  end

  class InvoiceSettings < StripeObject
    sig { returns(T.nilable(PaymentMethod)) }
    def default_payment_method; end
  end

  class Customer
    extend T::Sig

    sig { void.params(token: String) }
    def payment_method=(token); end

    sig { void.params(settings: T::Hash[Symbol, T.untyped]) }
    def invoice_settings=(settings); end

    sig { returns(T.any(T::Hash[Symbol, T.untyped], Stripe::InvoiceSettings)) }
    def invoice_settings; end

    sig { returns(T::Hash[Symbol, T.untyped]) }
    def metadata; end

    sig { returns(T.nilable(Stripe::Address)) }
    def address; end
    
    sig { returns(String) }
    def id; end

    sig { returns(String) }
    def name; end

    sig { returns(Customer).params(id: T.any(String, T::Hash[Symbol, T.any(String, T::Array[String])]), opts: T.nilable(T::Hash[Symbol, T.untyped])) }
    def self.retrieve(id, opts = nil); end

  end

  class PaymentIntent < APIResource
    extend T::Sig

    sig { returns(String) }
    def client_secret; end

    sig { returns(String) }
    def status; end
  end

  class Invoice < APIResource
    extend T::Sig

    sig { returns(T.nilable(Stripe::PaymentIntent)) }
    def payment_intent; end

    sig { returns(Integer) }
    def amount_paid; end

    sig { returns(String) }
    def status; end

    sig { returns(String) }
    def customer; end
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

  class Event < APIResource
    extend T::Sig

    sig { returns(String) }
    def type; end

    sig { returns(Stripe::StripeObject) }
    def data; end

    sig { returns(Event).params(id: T.any(String, T::Hash[Symbol, T.untyped]), opts: T.nilable(T::Hash[Symbol, T.untyped])) }
    def self.retrieve(id, opts = nil); end
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


class Stripe::Card
  sig { returns(String) }
  def id; end

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

class Stripe::Refund
  sig { returns(String) }
  def id; end

  sig { params(id: String, opts: T.nilable(T::Hash[T.untyped, T.untyped])).returns(Stripe::Refund) }
  def self.retrieve(id, opts={}); end

  sig { returns(String) }
  def charge; end
end

class Stripe::Charge
  sig { returns(String) }
  def id; end

  sig { params(id: String, opts: T.nilable(T::Hash[T.untyped, T.untyped])).returns(Stripe::Charge) }
  def self.retrieve(id, opts={}); end

  sig { returns(String) }
  def customer; end
end

class Stripe::Payout
  sig { returns(String) }
  def id; end

  sig { returns(Integer) }
  def created; end

  sig { returns(Integer) }
  def arrival_date; end

  sig { returns(Integer) }
  def amount; end

  sig { params(id: String, opts: T.nilable(T::Hash[T.untyped, T.untyped])).returns(Stripe::Payout) }
  def self.retrieve(id, opts={}); end
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

# typed: strong

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

  sig { params(id: String, opts: T.nilable(T::Hash)).returns(Stripe::Card) }
  def self.retrieve(id, opts={}); end
end

class Stripe::Customer
  sig { returns(String) }
  def id; end

  sig { params(id: String, opts: T.nilable(T::Hash)).returns(Stripe::Customer) }
  def self.retrieve(id, opts={}); end

  sig { returns(String) }
  def name; end
end

class Stripe::Refund
  sig { returns(String) }
  def id; end

  sig { params(id: String, opts: T.nilable(T::Hash)).returns(Stripe::Refund) }
  def self.retrieve(id, opts={}); end

  sig { returns(String) }
  def charge; end
end

class Stripe::Charge
  sig { returns(String) }
  def id; end

  sig { params(id: String, opts: T.nilable(T::Hash)).returns(Stripe::Charge) }
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

  sig { params(id: String, opts: T.nilable(T::Hash)).returns(Stripe::Payout) }
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

  sig { params(id: String, opts: T.nilable(T::Hash)).returns(Stripe::BalanceTransaction) }
  def self.retrieve(id, opts={}); end
end

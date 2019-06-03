# typed: strong

class Stripe::Card
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
end

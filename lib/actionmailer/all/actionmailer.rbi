# typed: strong

class ActionMailer::Base
  sig { params(headers: T.untyped).returns(ActionMailer::MessageDelivery) }
  def mail(headers = nil, &block); end
end

# typed: strong

class ActionMailer::Base
  sig { params(headers: T.untyped).returns(Mail::Message) }
  def mail(headers = nil, &block); end
end

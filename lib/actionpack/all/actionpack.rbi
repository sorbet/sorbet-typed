# typed: strong

class ActionController::Base < ActionController::Metal
end

class ActionController::Metal
  sig { returns(ActionDispatch::Request) }
  def request(); end

  sig { returns(ActionDispatch::Response) }
  def response(); end
end

class ActionDispatch::Request
end

class ActionDispatch::Response
end

class ActionController::Parameters
end

class ActionDispatch::Routing::RouteSet
  sig { params(blk: T.proc.bind(ActionDispatch::Routing::Mapper).void).void }
  def draw(&blk); end
end

module ActionController::Flash::ClassMethods
  sig { params(types: Symbol).void }
  def add_flash_types(*types); end
end

module ActionController::RequestForgeryProtection::ClassMethods
  sig do
    params(
      only: T.any(T::Array[Symbol], Symbol),
      except: T.nilable(T.any(T::Array[Symbol], Symbol)),
      if: T.untyped,
      unless: T.untyped,
      prepend: T.untyped,
      with: T.nilable(Symbol),
      exception: T.untyped,
      reset_session: T.untyped,
      null_session: T.untyped
    ).void
  end
  def protect_from_forgery(
    only: nil,
    except: nil,
    if: nil,
    unless: nil,
    prepend: false,
    with: nil,
    exception: nil,
    reset_session: nil,
    null_session: nil
  ); end
end

# typed: strict

module Middleware; end

class GrapeTest < Grape::API
  extend T::Sig

  use Middleware

  params do
    requires :nothing
  end
  get '' do
  end

  helpers do
    sig { void }
    def verify_params_as_instance_variable
      params

      params do
        #something
      end
    end
  end
end

# typed: strict

class ActiveRecord::Base

  sig do
    params(
      args: T.any(Symbol, T.proc.returns(T.untyped)),
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      block: T.nilable(T.proc.bind(T.untyped).void)
    ).void
  end
  def self.after_create_commit(
    *args,
    if: nil,
    unless: nil,
    &block
  ); end

  sig do
    params(
      args: T.any(Symbol, T.proc.returns(T.untyped)),
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      block: T.nilable(T.proc.bind(T.untyped).void)
    ).void
  end
  def self.after_update_commit(
    *args,
    if: nil,
    unless: nil,
    &block
  ); end

  sig do
    params(
      args: T.any(Symbol, T.proc.returns(T.untyped)),
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      block: T.nilable(T.proc.bind(T.untyped).void)
    ).void
  end
  def self.after_destroy_commit(
    *args,
    if: nil,
    unless: nil,
    &block
  ); end

  sig { params(attribute: T.any(Symbol, String)).void }
  def self.has_secure_token(attribute); end
end

module ActiveRecord::SecureToken
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::ActiveRecord::SecureToken::ClassMethods)
end

module ActiveRecord::Suppressor::ClassMethods
  def suppress(&block); end
end

module ActiveRecord::TouchLater
  extend(::ActiveSupport::Concern)

  def touch(*names, time: T.unsafe(nil)); end

  private

  def belongs_to_touch_method; end
  def has_defer_touch_attrs?; end
  def surreptitiously_touch(attrs); end
  def touch_deferred_attributes; end
end

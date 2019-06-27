# typed: strong

module ActiveModel::Dirty
  extend T::Sig
  sig { params(attr: Symbol, from: T.untyped, to: T.untyped).returns(T::Boolean) }
  def attribute_changed?(attr, from: nil, to: nil); end
  
  sig { params(attr: Symbol).returns(T::Boolean) }
  def attribute_changed_in_place?(attr); end
  
  sig { params(attr: Symbol).returns(T::Boolean) }
  def attribute_previously_changed?(attr); end
  
  sig { returns(T::Boolean) }
  def changed?; end
end

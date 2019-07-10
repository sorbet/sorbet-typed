# typed: strong

module ActiveModel::Dirty
  extend T::Sig
  sig { params(attr: Symbol, from: T.untyped, to: T.untyped).returns(T::Boolean) }
  def attribute_changed?(attr, from: nil, to: nil); end
  
  sig { params(attr_name: Symbol).returns(T::Boolean) }
  def attribute_changed_in_place?(attr_name); end
  
  sig { params(attr_name: Symbol).returns(T::Boolean) }
  def attribute_previously_changed?(attr_name); end
  
  sig { returns(T::Boolean) }
  def changed?; end
end

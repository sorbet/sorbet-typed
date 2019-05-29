# typed: strong

module ActiveSupport
  sig {params(kind: Symbol, blk: T.proc.bind(T.class_of(ActionController::Base)).void).void}
  def self.on_load(kind, &blk); end
end

class Object
  sig {returns(T::Boolean)}
  def blank?; end

  sig {returns(T::Boolean)}
  def present?; end

  sig {returns(String)}
  def to_param; end

  sig {params(key: String).returns(String)}
  def to_query(key); end

  sig {params(another_object: Object).returns(T::Boolean)}
  def in?(another_object); end

  sig {returns(T::Hash[String, T.untyped])}
  def instance_values; end

  sig {returns(T::Array[String])}
  def instance_variable_names; end
end

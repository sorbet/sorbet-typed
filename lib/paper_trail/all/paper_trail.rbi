# typed: strong

module PaperTrail::Model::ClassMethods
  def has_paper_trail(options = {})
  end
end

module PaperTrail::Model
  extend ::T::Sig
  mixes_in_class_methods(PaperTrail::Model::ClassMethods)
  def self.included(base); end
end

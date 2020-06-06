# typed: strict

class RuboCop::AST::ArrayNode
  PERCENT_LITERAL_TYPES = ::T.let(nil, ::T.untyped)
end

class RuboCop::AST::BlockNode
  VOID_CONTEXT_METHODS = ::T.let(nil, ::T.untyped)
end

class RuboCop::AST::Builder
  NODE_MAP = ::T.let(nil, ::T.untyped)
end

module RuboCop::AST::CollectionNode
  ARRAY_METHODS = ::T.let(nil, ::T.untyped)
end

class RuboCop::AST::KeywordSplatNode
  DOUBLE_SPLAT = ::T.let(nil, ::T.untyped)
end

module RuboCop::AST::MethodDispatchNode
  ARITHMETIC_OPERATORS = ::T.let(nil, ::T.untyped)
  SPECIAL_MODIFIERS = ::T.let(nil, ::T.untyped)
end

module RuboCop::AST::MethodIdentifierPredicates
  ENUMERATOR_METHODS = ::T.let(nil, ::T.untyped)
  OPERATOR_METHODS = ::T.let(nil, ::T.untyped)
end

class RuboCop::AST::Node
  ASSIGNMENTS = ::T.let(nil, ::T.untyped)
  BASIC_CONDITIONALS = ::T.let(nil, ::T.untyped)
  BASIC_LITERALS = ::T.let(nil, ::T.untyped)
  COMPARISON_OPERATORS = ::T.let(nil, ::T.untyped)
  COMPOSITE_LITERALS = ::T.let(nil, ::T.untyped)
  CONDITIONALS = ::T.let(nil, ::T.untyped)
  EQUALS_ASSIGNMENTS = ::T.let(nil, ::T.untyped)
  FALSEY_LITERALS = ::T.let(nil, ::T.untyped)
  IMMUTABLE_LITERALS = ::T.let(nil, ::T.untyped)
  KEYWORDS = ::T.let(nil, ::T.untyped)
  LITERALS = ::T.let(nil, ::T.untyped)
  MUTABLE_LITERALS = ::T.let(nil, ::T.untyped)
  OPERATOR_KEYWORDS = ::T.let(nil, ::T.untyped)
  REFERENCES = ::T.let(nil, ::T.untyped)
  SHORTHAND_ASSIGNMENTS = ::T.let(nil, ::T.untyped)
  SPECIAL_KEYWORDS = ::T.let(nil, ::T.untyped)
  TRUTHY_LITERALS = ::T.let(nil, ::T.untyped)
  VARIABLES = ::T.let(nil, ::T.untyped)
end

module RuboCop::AST::NumericNode
  SIGN_REGEX = ::T.let(nil, ::T.untyped)
end

class RuboCop::AST::PairNode
  COLON = ::T.let(nil, ::T.untyped)
  HASH_ROCKET = ::T.let(nil, ::T.untyped)
  SPACED_COLON = ::T.let(nil, ::T.untyped)
  SPACED_HASH_ROCKET = ::T.let(nil, ::T.untyped)
end

module RuboCop::AST::PredicateOperatorNode
  LOGICAL_AND = ::T.let(nil, ::T.untyped)
  LOGICAL_OR = ::T.let(nil, ::T.untyped)
  SEMANTIC_AND = ::T.let(nil, ::T.untyped)
  SEMANTIC_OR = ::T.let(nil, ::T.untyped)
end

class RuboCop::AST::ProcessedSource
  STRING_SOURCE_NAME = ::T.let(nil, ::T.untyped)
end

class RuboCop::AST::RegexpNode
  OPTIONS = ::T.let(nil, ::T.untyped)
end

module RuboCop::AST::Traversal
  MANY_CHILD_NODES = ::T.let(nil, ::T.untyped)
  NO_CHILD_NODES = ::T.let(nil, ::T.untyped)
  ONE_CHILD_NODE = ::T.let(nil, ::T.untyped)
  SECOND_CHILD_ONLY = ::T.let(nil, ::T.untyped)
end

module RuboCop::AST::Version
  STRING = ::T.let(nil, ::T.untyped)
end

RuboCop::Token = RuboCop::AST::Token

RuboCop::NodePattern = RuboCop::AST::NodePattern

RuboCop::ProcessedSource = RuboCop::AST::ProcessedSource

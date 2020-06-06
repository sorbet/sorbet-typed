# typed: strict

module RuboCop::RSpec
  CONFIG = ::T.let(nil, ::T.untyped)
end

module RuboCop::RSpec::Language
  ALL = ::T.let(nil, ::T.untyped)
  RSPEC = ::T.let(nil, ::T.untyped)
end

module RuboCop::RSpec::Version
  STRING = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::AlignLeftLetBrace
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::AlignRightLetBrace
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::AnyInstance
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::AroundBlock
  MSG_NO_ARG = ::T.let(nil, ::T.untyped)
  MSG_UNUSED_ARG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::Be
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::BeEql
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::BeforeAfterAll
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::Capybara::CurrentPathExpectation
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::Capybara::FeatureMethods
  MAP = ::T.let(nil, ::T.untyped)
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::Capybara::VisibilityMatcher
  MSG_FALSE = ::T.let(nil, ::T.untyped)
  MSG_TRUE = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::ContextMethod
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::ContextWording
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::Cop
  DEFAULT_CONFIGURATION = ::T.let(nil, ::T.untyped)
  DEFAULT_PATTERN_RE = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::DescribeClass
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::DescribeMethod
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::DescribeSymbol
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::DescribedClass
  DESCRIBED_CLASS = ::T.let(nil, ::T.untyped)
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::DescribedClassModuleWrapping
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::Dialect
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::EmptyExampleGroup
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::EmptyHook
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::EmptyLineAfterExample
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::EmptyLineAfterExampleGroup
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::EmptyLineAfterFinalLet
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::EmptyLineAfterHook
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::EmptyLineAfterSubject
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::ExampleLength
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::ExampleWithoutDescription
  MSG_ADD_DESCRIPTION = ::T.let(nil, ::T.untyped)
  MSG_DEFAULT_ARGUMENT = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::ExampleWording
  IT_PREFIX = ::T.let(nil, ::T.untyped)
  MSG_IT = ::T.let(nil, ::T.untyped)
  MSG_SHOULD = ::T.let(nil, ::T.untyped)
  SHOULD_PREFIX = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::ExpectActual
  COMPLEX_LITERALS = ::T.let(nil, ::T.untyped)
  MSG = ::T.let(nil, ::T.untyped)
  SIMPLE_LITERALS = ::T.let(nil, ::T.untyped)
  SUPPORTED_MATCHERS = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::ExpectChange
  MSG_BLOCK = ::T.let(nil, ::T.untyped)
  MSG_CALL = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::ExpectInHook
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::ExpectOutput
  MSG = ::T.let(nil, ::T.untyped)
end

module RuboCop::Cop::RSpec::ExplicitHelper
  BUILT_IN_MATCHERS = ::T.let(nil, ::T.untyped)
  MSG_EXPLICIT = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::FactoryBot::AttributeDefinedStatically
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::FactoryBot::CreateList
  MSG_CREATE_LIST = ::T.let(nil, ::T.untyped)
  MSG_N_TIMES = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::FactoryBot::FactoryClassName
  ALLOWED_CONSTANTS = ::T.let(nil, ::T.untyped)
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::FilePath
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::Focus
  FOCUSABLE_SELECTORS = ::T.let(nil, ::T.untyped)
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::HookArgument
  EXPLICIT_MSG = ::T.let(nil, ::T.untyped)
  HOOKS = ::T.let(nil, ::T.untyped)
  IMPLICIT_MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::HooksBeforeExamples
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::ImplicitBlockExpectation
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::ImplicitExpect
  ENFORCED_REPLACEMENTS = ::T.let(nil, ::T.untyped)
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::ImplicitSubject
  MSG = ::T.let(nil, ::T.untyped)
end

module RuboCop::Cop::RSpec::InflectedHelper
  MSG_INFLECTED = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::InstanceSpy
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::InstanceVariable
  EXAMPLE_GROUP_METHODS = ::T.let(nil, ::T.untyped)
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::InvalidPredicateMatcher
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::ItBehavesLike
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::IteratedExpectation
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::LeadingSubject
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::LeakyConstantDeclaration
  MSG_CLASS = ::T.let(nil, ::T.untyped)
  MSG_CONST = ::T.let(nil, ::T.untyped)
  MSG_MODULE = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::LetBeforeExamples
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::LetSetup
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::MessageChain
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::MessageExpectation
  MSG = ::T.let(nil, ::T.untyped)
  SUPPORTED_STYLES = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::MessageSpies
  MSG_HAVE_RECEIVED = ::T.let(nil, ::T.untyped)
  MSG_RECEIVE = ::T.let(nil, ::T.untyped)
  SUPPORTED_STYLES = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::MissingExampleGroupArgument
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::MultipleDescribes
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::MultipleExpectations
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::MultipleSubjects
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::NamedSubject
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::NestedGroups
  DEPRECATED_MAX_KEY = ::T.let(nil, ::T.untyped)
  DEPRECATION_WARNING = ::T.let(nil, ::T.untyped)
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::NotToNot
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::OverwritingSetup
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::Pending
  MSG = ::T.let(nil, ::T.untyped)
  PENDING = ::T.let(nil, ::T.untyped)
  SKIPPABLE = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::Rails::HttpStatus::NumericStyleChecker
  ALLOWED_STATUSES = ::T.let(nil, ::T.untyped)
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::Rails::HttpStatus::SymbolicStyleChecker
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::ReceiveCounts
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::ReceiveNever
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::RepeatedDescription
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::RepeatedExample
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::RepeatedExampleGroupBody
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::RepeatedExampleGroupDescription
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::ReturnFromStub
  MSG_AND_RETURN = ::T.let(nil, ::T.untyped)
  MSG_BLOCK = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::ReturnFromStub::BlockBodyCorrector
  NULL_BLOCK_BODY = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::ScatteredLet
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::ScatteredSetup
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::SharedContext
  MSG_CONTEXT = ::T.let(nil, ::T.untyped)
  MSG_EXAMPLES = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::SharedExamples::Checker
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::SingleArgumentMessageChain
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::SubjectStub
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::UnspecifiedException
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::VerifiedDoubles
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::VoidExpect
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::RSpec::Yield
  MSG = ::T.let(nil, ::T.untyped)
end

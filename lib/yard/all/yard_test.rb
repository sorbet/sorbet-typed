# typed: strict

YARD::CodeObjects::ClassObject.new(YARD::Registry.root, 'X::Y')
# => #<yardoc class X::Y>

YARD::Handlers::Ruby::AttributeHandler.handlers
# => [#<YARD::Handlers::Ruby::MethodCallWrapper:0x00007f8b198e52a0 @name="attr">,
#     #<YARD::Handlers::Ruby::MethodCallWrapper:0x00007f8b198e4fd0 @name="attr_reader">,
#     #<YARD::Handlers::Ruby::MethodCallWrapper:0x00007f8b198e4dc8 @name="attr_writer">,
#     #<YARD::Handlers::Ruby::MethodCallWrapper:0x00007f8b198e4c60 @name="attr_accessor">]

YARD::Handlers::Ruby::MethodHandler.handlers
# => [:def, :defs]
namespace = YARD::CodeObjects::ClassObject.new(:root, :Suit)
YARD::CodeObjects::ConstantObject.new(namespace, 'Spades')

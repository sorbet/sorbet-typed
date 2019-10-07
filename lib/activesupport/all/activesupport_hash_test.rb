# typed: true

module ActiveSupportHashTest
  h = {a: "1", b: "2"}
  h.stringify_keys
  h.symbolize_keys
  h.deep_stringify_keys
  h.deep_symbolize_keys
  h.to_options
end

# typed: strong

# bencode-0.8.2

class Array
  # Bencodes the Array object. Bencoded arrays are represented as +lxe+, where
  # +x+ is zero or more bencoded objects.
  #
  #     [1, "foo"].bencode   #=> "li1e3:fooe"
  #
  sig { returns(String) }
  def bencode; end
end

class Hash
  # Bencodes the Hash object. Bencoded hashes are represented as +dxe+, where
  # +x+ is zero or a power of two bencoded objects. each key is immediately
  # followed by its associated value. All keys must be strings. The keys of the
  # bencoded hash will be in lexicographical order.
  sig { returns(String) }
  def bencode; end
end

class Integer
  # Bencodes the Integer object. Bencoded integers are represented as +ixe+,
  # where +x+ is the integer with an optional hyphen prepended, indicating
  # negativity.
  #
  #     42.bencode   #=> "i42e"
  #     -7.bencode   #=> "i-7e"
  #
  sig { returns(String) }
  def bencode; end
end

class IO
  sig { returns(T.untyped) }
  def bdecode; end

  sig { returns(String) }
  def bencode; end

  sig { params(filename: String).returns(T.untyped) }
  def self.bdecode(filename); end

  sig { params(filename: String).returns(String) }
  def self.bencode(filename); end
end

class Object
  # Always raises an exception. Subclasses of Object must themselves define
  # meaningful #bencode methods.
  sig { void }
  def bencode; end
end

class String
  # Bdecodes the String object and returns the data serialized through
  # bencoding.
  #
  #     "li1ei2ei3ee".bdecode   #=> [1, 2, 3]
  #
  sig { returns(T.untyped) }
  def bdecode; end

  # Bencodes the String object. Bencoded strings are represented as
  # <code>x</code>:<code>y</code>, where +y+ is the string and +x+ is the length
  # of the string.
  #
  #     "foo".bencode   #=> "3:foo"
  #     "".bencode      #=> "0:"
  #
  sig { returns(String) }
  def bencode; end
end

module BEncode
  # Encodes the Ruby object +obj+ into a bencoded string.
  #
  # @param [Hash, Array, Integer, String] obj the object to encode
  # @return [String] a bencoded string
  # @raise [EncodeError] if +obj+ is not a supported object type
  sig do
    params(
      obj:
        T.any(
          T::Array[T.untyped],
          Integer,
          T::Hash[T.untyped, T.untyped],
          String
        )
    )
      .returns(String)
  end
  def self.dump(obj); end

  # Decodes +str+ into a Ruby structure.
  #
  # @param [String] str a bencoded string
  # @option opts [Boolean] :ignore_trailing_junk (false) whether to ignore
  #   invalid bencode at the end of +str+
  # @return [Object] a Ruby object
  # @raise [DecodeError] if +str+ is malformed
  sig do
    params(str: String, opts: { ignore_trailing_junk: T::Boolean }).returns(
      T.untyped
    )
  end
  def self.load(str, opts = {}); end

  # Decodes the file located at +path+.
  #
  # @param [String] path path to the bencoded file
  # @option (see .load)
  # @return (see .load)
  sig do
    params(path: String, opts: { ignore_trailing_junk: T::Boolean }).returns(
      T.untyped
    )
  end
  def self.load_file(path, opts = nil); end
end

class BEncode::DecodeError < StandardError; end

class BEncode::EncodeError < StandardError; end

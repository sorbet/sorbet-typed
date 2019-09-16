# typed: true

module BencodeTest
  def self.test
    # encoding via core extensions
    'hello'.bencode
    100.bencode
    %w[beep boop].bencode
    { name: 'Alice' }.bencode

    # encoding via BEncode.dump
    BEncode.dump('hello')
    BEncode.dump(100)
    BEncode.dump([])
    BEncode.dump(%w[beep])
    BEncode.dump(beep: 'boop')

    # decoding via core extension
    'i100e'.bdecode

    # decoding via BEncode.load
    BEncode.load('5:hello')
  end
end

$VERBOSE = nil

require "test/unit"
require "horrorshow"

class TestHorrorshow < Test::Unit::TestCase
  def self.parse_using(parser, *strings)
    define_method("test #{parser}") do
      parser = Horrorshow.const_get("#{parser}Parser").new
      strings.each do |str|
        assert_not_nil parser.parse(str), "attempting to parse #{str}"
      end
    end
  end
  
  parse_using :Literals,
    "null", "true", "false",
    "0", "4", "57", "8.4", "0.6", ".44", "9e+10", "4.5e-04", ".5E03"
end

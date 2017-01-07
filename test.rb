require 'test/unit'
require_relative 'lib/str'

class CliColorConverterTest < Test::Unit::TestCase
  test 'return true when string is a hexadecimal valid' do
    assert_true '#FFF'.is_hexa?
    assert_true '#FFFFFF'.is_hexa?
    assert_true 'FFF'.is_hexa?
    assert_true 'FFFFFF'.is_hexa?
  end

  test 'return false when string is a hexadecimal invalid' do
    assert_false '#XXX'.is_hexa?
    assert_false '#XXXXXX'.is_hexa?
    assert_false 'XXX'.is_hexa?
    assert_false 'XXXXXX'.is_hexa?
    assert_false 'FF'.is_hexa?
    assert_false 'FFFFFFF'.is_hexa?
  end

end

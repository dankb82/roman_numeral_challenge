
require 'minitest/autorun'
require 'minitest/pride'
# WRITE YOUR CODE HERE.  Name your method `to_roman`.

def to_roman(x)
  if (x / 1000) >= 1
    d = x / 1000
    string = ("M" * d)
    remainder = x % 1000
    if (remainder / 10) >= 1
      d = remainder / 10
      string += ("X" * d)
      remainder = x % 10
      if (remainder / 5) >= 1
      elsif remainder == 4
        string += "IV"
      end
    end
  end
  string
end

class RomanNumeralsTest < Minitest::Test
  # def test_1
  #   assert_equal 'I', to_roman(1)
  # end
  # def test_2
  #   assert_equal 'II', to_roman(2)
  # end
  # def test_3
  #   assert_equal 'III', to_roman(3)
  # end
  # def test_4
  #   assert_equal 'IV', to_roman(4)
  # end
  # def test_5
  #   assert_equal 'V', to_roman(5)
  # end
  # def test_6
  #   assert_equal 'VI', to_roman(6)
  # end
  # def test_9
  #   assert_equal 'IX', to_roman(9)
  # end
  # def test_27
  #   assert_equal 'XXVII', to_roman(27)
  # end
  # def test_48
  #   assert_equal 'XLVIII', to_roman(48)
  # end
  # def test_59
  #   assert_equal 'LIX', to_roman(59)
  # end
  # def test_93
  #   assert_equal 'XCIII', to_roman(93)
  # end
  # def test_141
  #   assert_equal 'CXLI', to_roman(141)
  # end
  # def test_163
  #   assert_equal 'CLXIII', to_roman(163)
  # end
  # def test_402
  #   assert_equal 'CDII', to_roman(402)
  # end
  # def test_575
  #   assert_equal 'DLXXV', to_roman(575)
  # end
  def test_911
    assert_equal 'CMXI', to_roman(911)
  end
  def test_1024
    assert_equal 'MXXIV', to_roman(1024)
  end
  def test_3000
    assert_equal 'MMM', to_roman(3000)
  end
end

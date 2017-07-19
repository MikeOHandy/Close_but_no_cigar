require "minitest/autorun"
require_relative "lottery.rb"

class TestCloseNoCigar < Minitest::Test
  def test_nothing
    my_num = "1234"
    win_num = []
    assert_equal([], lottery(my_num, win_num))
  end
  def test_winning_num_match
    my_num = "1234"
    win_num = ["1234", "4567", "8901", "2345", "6789"]
    assert_equal(["1234"], lottery(my_num, win_num))
  end
  def test_close_match
    my_num = "1234"
    win_num = ["1244"]
    assert_equal(true, off_by_one(my_num, win_num))
  end
  def test_close_no_cigar
    my_num = "1234"
    win_num = ["1235", "4567", "8901", "2345", "6789", "9234", "9123", "3412"]
    assert_equal(["1235", "2345","9234","9123"],almost_there(my_num, win_num))
  end
 end



# require"minitest/autorun"
# require_relative "lottery.rb"
# class Testlotto < Minitest::Test


# def test_winning_number_match
# 	my_num = (["6264"])
# 	win_num = ["3334","3345","3363","3247","3266"]
# 	assert_equal(["6264"],my_num)
# end
# end
require "minitest/autorun"
require_relative "lottery.rb"

class TestLottery < Minitest::Test
	def test_blank
	my_num = "6875"
	win_num = []
	assert_equal([], lotto(my_num, win_num))
	end
	def test_winning_num_match
	my_num = "6875"
	win_num = ["6875", "6523", "7876", "4543", "9176"]
	assert_equal(["6875"], lotto(my_num, win_num))
	end
	def test_close_match
	my_num = "6875"
	win_num = "6865"
	assert_equal(true, off_by_one(my_num, win_num))
	end
	def test_close_no_cigar
	my_num = "6875"
	win_num = ["5875", "6523", "7876", "4543", "9176"]
	assert_equal(["5875"], almost(my_num, win_num))
	end
	def test_close_no_cigar2
	my_num = "6875"
	win_num = ["5875", "6523", "7875", "4543", "9176"]
	assert_equal(["5875", "7875"], almost(my_num, win_num))
	end
end

# def lotto(my_num, winning_num)
# 	match = []
# 	win_num.each do |win_num|
# 		if win_num == my_num
# 			match << my_num
# 		end
# 	end
# 	match
# end

# def off_by_one(my_num, win_num)
# 	count = 0
# 		if my_num[0] == win_num[0]
# 			count += 1
# 		else 0
# 		end
# 		if my_num[1] == win_nums[1]
# 			count +=1
# 		else 0
# 		end
# 		if my_num[2] == win_nums[2]
# 			count +=1
# 		else 0
# 		end
# 		if my_num[3] == win_nums[3]
# 			count +=1
# 		else 0
# 		end
# 		if count == 3
# 			true
# 		end
# 	end
# def almost(my_num, win_num)
# 	winner = []
# 	win_num.each do |x|
# 		if off_by_one(my_num, x) == true
# 			winner << x
# 		end
# 	end
# 	winner
# end

def count_matching_chars(str1,str2)
  str1.each_char.count do |char| 
    str2.include?(char)
  end
end

def matches(my_num, arr)
  arr.select do |num|
    return true if count_matching_chars(num,my_num) >= 3
  end
end






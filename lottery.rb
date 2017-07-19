def lottery(my_num, win_num1)
  match = []
  win_num1.each do |match_num|
    if match_num == my_num
      match << my_num
    end
  end
  match
end

def off_by_one(my_num, win_num1)
  count = 0
  z=0
   win_num1.length.times do
     i=0
    win_num1.length.times do
      if my_num[z] == win_num1[i]
        count += 1
      end
      i+=1
  end
  z+=1
end
  count == win_num1.length - 1
end
p off_by_one("1234","1235")

def almost_there(my_num, win_num1)
  winning = []
  win_num1.each do |y|
    if off_by_one(my_num, y) == true
      winning << y
    end
  end
  winning
end

# def count_matching_chars(str1,str2)
#   str1.each_char.count do |char| 
#     str2.include?(char)
#   end
# end

# def matches(my_num, arr)
#   arr.select do |num|
#     return true if count_matching_chars(num,my_num) >= 3
#   end
# end






require "byebug"

def PhoneNumber(number)
  num = number.gsub(/[^0-9]/,"")
  if num.size == 11 && num[0] == "1"
    num.slice! "1"
    puts num
    num
  elsif num.size == 10 && num[0].to_i.between?(2,6) && num[0].to_i.between?(2,6)
    puts num
    num
  else
    puts "Not a valid number"
  end

end

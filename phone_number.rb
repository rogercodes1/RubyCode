require "pry"
# MY CODE Start
# I used regex to simplify the code to remove any non digit chars.
phone_number = "613-995-0153"

def us_number(phone_number)
  num = phone_number.gsub(/[^0-9]/,"")
  # if it was a size of 11 and had a 1 it is fair to assume
  # it is a valid phone number - checking for positions for N
  num = if num.size == 11 && num[0] == "1"
      num.slice! "1"
      num
        else
          num
        end
  binding.pry
  if num.size == 10 && num[0].to_i.between?(2,9) && num[0].to_i.between?(2,9)
    num
  else
    puts "Not a valid number"
    nil
  end
end
puts us_number(phone_number)

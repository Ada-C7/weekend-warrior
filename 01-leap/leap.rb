# def leap_year?(year)
#   if year % 4 == 0
#     if year % 100 == 0
#       if year % 400 ==0
#          true
#       else false
#       end
#     else true
#     end
#   else false
#   end
# end



def leap_year?(user_year)
  #leap_year = false
  if user_year % 4 == 0 && (!(user_year % 100 == 0) || (user_year % 100 == 0 && user_year % 400 == 0))
    leap_year = true
  end
end

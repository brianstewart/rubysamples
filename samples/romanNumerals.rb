def numToNumeral number
  
  if number <= 0
    return puts "number must be greater than 0"
  end
  
  roman = ""
  
  # looks really crazy but it works!!
  roman = roman + "M" * (number        / 1000)
  roman = roman + "D" * (number % 1000 /  500)
  roman = roman + "C" * (number %  500 /  100)
  roman = roman + "L" * (number %  100 /   50)
  roman = roman + "X" * (number %   50 /   10)
  roman = roman + "V" * (number %   10 /    5)
  roman = roman + "I" * (number %   5  /    1)
  
  puts roman
  
  return roman
end

puts "Enter a number greater than 0"
# if you return a number that is not greater than 0, it will let you enter another number
while true
  response = gets.chomp
  returnValue = numToNumeral response.to_i
  if returnValue != nil
    break
  end
end

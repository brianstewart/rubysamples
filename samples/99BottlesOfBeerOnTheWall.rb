beersLeftOnWall = 100
bottle = "bottles"

while beersLeftOnWall > 0
  # start singing!  
  puts beersLeftOnWall.to_s + " " + bottle + " of beer on the wall"
  puts beersLeftOnWall.to_s + " " +  bottle + " of beer"
  puts "Take one down pass it around"
  
  # if there's only one left, and we just removed it, than we are done with the song!
  if beersLeftOnWall == 1
    puts "No more bottles of beer on the wall!"
    break
  end
  
  # we took one down and passed it around so now there is one less
  beersLeftOnWall = beersLeftOnWall - 1
  
  # if there is only one left, then bottles should be singular
  if beersLeftOnWall == 1
    bottle = "bottle"
  end
  
  puts beersLeftOnWall.to_s + " " +  bottle + " of beer on the wall"
  puts ""
  
end

puts ""
puts "There are no more bottles of beer on the wall."
puts "What now?"
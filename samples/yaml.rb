require "yaml" # imported YAML!

testArray = ["Boggis", "Bunce", "Bean"]

# converted an array to a string
testString = testArray.to_yaml

filename = "names.txt"

# insert the string into the file
File.open filename, "w" do |f|
  f.write testString
end

readString = File.read filename
# load the array
readArray = YAML::load readString

# both return true
puts (readString == testString)
puts (readArray == testArray)



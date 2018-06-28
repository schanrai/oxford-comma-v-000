=begin
#returns a string without any additional fomatting when given a 1-element array
 # adds 'and' between elements when given a 2-element array -start with this - switch statements
      condition 1 = if array.length = 2 , then do adds
  #adds commas plus a final 'and' when given a 3-element array
  #correctly formats arrays of lengths greater than three
  #are there things in common for all 3 conditions? can we emulate the 'and' for all array lenghts >1
=end

require 'pry'

def oxford_comma(array)
 if array.length == 2
    array.insert(-2," and ")
    array.join
    #or you could just do string interpolation of elment 0 + 1 
 elsif array.length > 2 
    array[-1].insert(0,"and ")
    array.join(", ")
 else
    array[0].to_s
 end
end


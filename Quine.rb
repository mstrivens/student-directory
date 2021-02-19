def method
  "def method
  end
  puts method[0, 11] + 34.chr + method + 34.chr
  + method[11, method.length-11]"
end

puts method[0, 11] + 34.chr + method + 34.chr + method[11, method.length-11]

# This is a Quine
# It is a piece of code that prints its source code
# It works like this
# At some point you need to have a string which will contain all the code
# before and after itself, but not contain itself
# It doesn't really matter and what you have before the string, but it does
# matter what you have after

# you need to have repeated access to the string
# you will then cut a substring from it which will be eveything before
# the string itself (method[0, 11] only prints def method excluding the ")
# Following this, you need a quote(" = 34.chr/or the 34th character)
# then the string itself, then another quote
# then you print the def method end, but start at the 11th character (the
# space after method) and make it go the length of the string, minus the 11
# alreay taken off.

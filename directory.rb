student_count = 11
# lets put all of the students in an array
students = [
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex Delarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddie Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
]
# now we print the students
puts  "The students of Villains Academy"
puts "---------------"
students.each do |student|
  puts student
end

# finally print the student count

puts "Overall, we have #{students.count} great students. "

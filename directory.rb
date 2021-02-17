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

#create 3 methods - header, main, footer
# now we print the students
def print_header
  puts "The students of Villains Academy"
  puts "---------------"
end

def print(names)
  names.each do |student|
  puts student
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students."
end

print_header
print(students)
print_footer(students)

# finally print the student count

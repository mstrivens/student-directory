def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  #while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    puts "Enter cohort month"
    month = gets.chomp
    if month.empty?
      month = "month"
    end

    students <<  {name: name, cohort: month.to_s}

    puts "Now we have #{students.count} students"
    puts "Enter new name"
    # get another name from user
    name = gets.chomp
  end
  students
end

#create 3 methods - header, main, footer
# now we print the students
def print_header
  puts "The students of Villains Academy".center(40)
  puts "---------------".center(40)
end

def print(names)
  names.map! do |key, value|
   "#{key[:cohort]}, #{key[:name]}"
 end
  puts names.sort
end

def print_footer(names)
  if names.count > 1
    puts "Overall, we have #{names.count} great students.".center(40)
  else
    puts "Overall, we have #{names.count} great student.".center(40)
  end
end

def run_methods
  students = input_students
  if students.length < 1
    puts "No students"
  else
    print_header
    print(students)
    print_footer(students)
  end
end

run_methods




# What if the user makes a typo?

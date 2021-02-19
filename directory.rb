  @students = []
  require 'csv'
def print_menu
    puts "1. Input the students"
    puts "2. Show the students"
    puts "3. Save the list"
    puts "4. Load the list"
    puts "9. Exit"
end

def interactive_menu
  loop do
    print_menu
    options(STDIN.gets.chomp)
  end
end

def options(selection)
  case selection
  when "1"
    puts "You selected 1"
    input_students
  when "2"
    puts "You selected 2"
    show_students
  when "3"
    puts "You selected 3"
    save_students
  when "4"
    puts "You selected 4"
    load_students
  when "9"
    puts "You selected 9"
    exit
  else
    puts "I don't know what you mean, try again"
  end
end

def input_students
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"
    name_entry
end

def show_students
  print_header
  print_students_list
  print_footer
end

def print_header
  puts "The students of Villains Academy"
  puts "---------------"
end

def print_students_list
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer
    puts "Overall, we have #{@students.count} great students."
end

def save_students(filename = "students.csv")
  # open the file for writing
  # puts "Select file to save to"
  # filename = STDIN.gets.chomp
  CSV.open(filename, "w") {|csv|
  # iterate over the array of students
  @students.each do |student|
    student_data = [student[:name], student[:cohort]] # array created from hash
    csv_line = student_data.join(",") # array joined to form string
    csv.puts student_data # string puts'ed to files
  end
}
end

# def loading_students
#   puts "which file would you like to load from?"
#   filename = STDIN.gets.chomp
#   file = File.open(filename, "r")
#   file.readlines.each do |line|
#   name, cohort = line.chomp.split(',')
#     student_into_array(name, cohort.to_sym)
#   end
#   file.close
# end

def load_students(filename = "students.csv")
  # CSV.open(filename, "r") {|file|
    CSV.foreach(filename) do |line| # contains name, cohort
  # file.readlines.each do |line|
  name, cohort = line
    student_into_array(name, cohort.to_sym)
  end

end

def startup_load_students
  filename = ARGV.first # first arguement from the command line
  if filename.nil?
    load_students("students.csv") # get out of the method it isn't given
  elsif File.exists?(filename)
    load_students(filename)
    puts "Loaded #{@students.count} from #{filename}"
  else # if it doesn't exist
    puts "Sorry, #{filename} doesn't exist"
    exit # quit the program
  end
end

def name_entry
  name = STDIN.gets.chomp
  #while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    student_into_array(name, :november)
    # @students <<  {name: name, cohort: :november}
    puts "Now we have #{@students.count} students"
    puts "Enter new name"
    # get another name from user
    name = STDIN.gets.chomp
  end
end

def student_into_array(name, month)
  @students <<  {name: name, cohort: month}
end

startup_load_students
interactive_menu




# What if the user makes a typo?
# how to ask the user what file it would like to load the data from

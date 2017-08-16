#lets put all students into an array
def input_students
  puts "Please enter the names of students, country of birth and age"
  puts "To finish hit return twice"
  students = []
  name = gets.chomp
  while !name.empty? do # note if ! is missing the input never ends
  puts "country of birth?"
  country_of_birth = gets.chomp
  puts "age?"
  age = gets.chomp
    students << {name: name, cohort: :november, country_of_birth: country_of_birth, age: age}
    puts "Now we have #{students.count} students. Next name?"
  name = gets.chomp
  end
  students
end

def print_header
  puts "The students of Villain Academy"
  puts "--------------------"
end

def print(students)
  i = 0
  while i < students.size do
  ni = i + 1
  puts "#{ni}. #{students[i][:name].ljust(30)} (#{students[i][:cohort]} cohort) #{students[i][:country_of_birth]} #{students[i][:age]}" if students[i][:name].start_with?("T","t")
  i += 1
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)

#lets put all students into an array
def input_students
  puts "Please enter the names of students"
  puts "To finish hit return twice"
  students = []
  name = gets.chomp
  while !name.empty? do # note if ! is missing the input never ends
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students."
  name = gets.chomp
  end
  students
end

def print_header
  puts "The students of Villain Academy"
  puts "--------------------"
end

def print(students)
  students.each_with_index do |student, index|
  ni = index.to_i + 1
  puts "#{ni}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)

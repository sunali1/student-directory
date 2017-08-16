def interactive_menu
  students = []
  loop do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"
    selection = gets.chomp
 case selection
  when "1"
    students = input_students
  when "2"
    print_header
    print(students)
    print_footer(students)
  when "9"
    exit # this will cause the program to terminate
  else
    puts "I don't know what you meant, try again"
  end
 end
end
#lets put all students into an array
def input_students
  puts "Please enter the names of students, cohort, country of birth and age"
  puts "To finish hit return twice"
  students = []
  name = gets.chomp
  while !name.empty? do # note if ! is missing the input never ends
  puts "cohort?"
  cohort = gets.chomp.to_sym
  cohort = "November".to_sym if cohort.empty?#default :november cohort didnt work
  puts "country of birth?"
  country_of_birth = gets.chomp
  puts "age?"
  age = gets.chomp
    students << {name: name, cohort: cohort, country_of_birth: country_of_birth, age: age}
    if students.count == 1
    puts "Now we have #{students.count} student. Next name?"
    else
      puts "Now we have #{students.count} students. Next name?"
    end
  name = gets.chomp
  end
  students    # step 8.8 TRY LATER unable to do .group_by{|x| x[:cohort]} cant figure why
end

def print_header
  puts "The students of Villain Academy"
  puts "--------------------"
end

def print(students)
  i = 0
  while i < students.size && students.size > 0 do
  ni = i + 1
  puts "#{ni}. #{students[i][:name].ljust(30)} (#{students[i][:cohort]} cohort) #{students[i][:country_of_birth]} #{students[i][:age]}" if students[i][:name].start_with?("T","t")
  i += 1
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

interactive_menu
students = input_students
print_header
print(students)
print_footer(students)

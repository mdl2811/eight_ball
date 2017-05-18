require 'pry'
@arr = ['Yes', 'No', 'Maybe', 'Please Ask Again']
@arr2 = @arr.clone

def greeting
  puts "----Magic 8 Ball----"
  puts """
    Type a question to get an answer,
    or type Quit to end the program
  """
  puts "Type 3 Too Add Answers/4 To Reset Answers/5 See Answers"
  user_question = gets.downcase.chomp
  answers(user_question)
end

def answers(user_question)
  if user_question == "quit"
    good_bye
  elsif user_question == "3"
      add_answers
  elsif user_question == "best team na"
      secret_answer
  elsif user_question == "4"
      reset_answers
  elsif user_question == "5"
      see_answers
  else
    puts @arr.sample
    good_bye
  end
end

def add_answers
  @arr2  << gets
  puts @arr
  greeting
end

def secret_answer
  puts "CLG"
  greeting
end

def reset_answers
  @arr2.clear
  puts @arr
  greeting
end

def see_answers
  if @arr2.any?
    puts @arr2
  else
    puts @arr
  end
  greeting
end

def good_bye
  puts "Thanks for playing....... Goodbye!"
  exit
end

greeting


@answer_array = ["dog", "cat", "bird"]


def magic8ball_game
  puts "----Magic 8 ball----"
  puts "If you want to ask a question, just type it in. To quit, type quit. To ad a
  new random answer type - new."
  puts "This is the current list of answers"
  puts @answer_array
  user_question = gets.chomp.downcase
  if user_question == "new"
    ad_new_answer
  elsif user_question == "quit"
    puts "OK BYE!"
    exit
  end
  puts "ok you want to know #{user_question}"
  puts_random_answer
end


def puts_random_answer
  puts "You're answer is..."

  puts @answer_array.sample
  magic8ball_game
end

def ad_new_answer
  puts "Ok type the answer you'd like to ad"
  new_user_answer = gets.chomp
  @answer_array << new_user_answer

  puts "Would you like to ad another new answer?"
  puts "For Yes type Yes - For No type No"
  continue_to_ad_answers = gets.chomp.downcase
  if continue_to_ad_answers == "yes"
    ad_new_answer
  elsif continue_to_ad_answers == "no"
    magic8ball_game
  else puts "Not a valid answer"
    magic8ball_game
  end

end



magic8ball_game

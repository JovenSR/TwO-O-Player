require './question'
require './player'

def get_answer(q, turn)
  if(turn % 2 == 0)
    str = 'player 2'
  else
    str = 'player 1'
  end
  print str + " " + q.get_question()
  answer = gets
  answer.chomp
  return answer
end

def validate_answer(answer, correct_answer)
  answer_integer = answer.to_i
  if(answer_integer == correct_answer)
    return true
  end
  return false
end


player1 = Player.new('player1')
player2 = Player.new('player2')
turn = 1

while(player1.lives > 0 && player2.lives > 0)
  puts "----New Turn----"
  q = Question.new()
  a = get_answer(q,turn)
  valid = validate_answer(a, q.get_answer())

  if (turn % 2 == 0)
    if(!valid)
      puts "Come on dude, really?"
      player2.dec_lives()
      puts "P1 #{player1.lives}/3 vs P2 #{player2.lives}/3"
    else
      puts "Player 2: Yes!!"
      puts "P1 #{player1.lives}/3 vs P2 #{player2.lives}/3"
    end

  else
    if(!valid)
      puts "Come on dude, really?"
      player1.dec_lives()
      puts "P1 #{player1.lives}/3 vs P2 #{player2.lives}/3"
    else
      puts "Player 1: Yes!!"
      puts "P1 #{player1.lives}/3 vs P2 #{player2.lives}/3"
    end
  end
  turn = turn - 1
  if(player1.lives == 0 || player2.lives == 0)
    puts "-----GAME OVER------"
    puts "Bye!"
  end
end






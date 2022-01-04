require "./questions.rb"

class Game

  @@current_player
  @@player1
  @@player2

  def checkAnswer(answer, correctAnswer)
    
    if answer == correctAnswer
      puts "Yes! You are correct."
      check_score()
    else
      puts "Seriously ? No!"
      @@current_player.change_score()
      check_score()
    end
  end

  def check_score
    if @@player1.score == 0
      #Game Over
      puts "Player 2 wins with score of #{@@player2.score}/3"
      puts "--- Game Over ---"
      puts " Good Bye! "
    elsif @@player2.score == 0
      #Game Over
      puts "Player 1 wins with score of #{@@player1.score}/3"
      puts "--- Game Over ---"
      puts " Good Bye! "
    else
      puts "P1 : #{@@player1.score}/3 vs P2 : #{@@player2.score}/3"
      puts "--- New Turn ---"
      change_player()
      ask_question()
    end
  end
  def change_player
    if @@current_player == @@player1
      @@current_player = @@player2
    else
      @@current_player = @@player1
    end
  end
  def ask_question
    question = Question.new()
    question.generateQuestion(@@current_player.player)
    answer = gets.chomp.to_i
    checkAnswer(answer, question.correctAnswer())
  end


  def init(player1, player2)
    @@player1 = player1
    @@player2 = player2
    @@current_player = player1
    ask_question()
  end
end
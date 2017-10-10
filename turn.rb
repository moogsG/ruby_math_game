class Turn
  attr_reader :current_player
  def initialize(playerOne, playerTwo)
    @playerOne = playerOne
    @playerTwo = playerTwo
    @current_player = playerOne
  end

  def newTurn

    question = MathQuestions.new
    p "#{@current_player.name}: #{question.question}"
    reply = gets.chomp.to_i

    if reply == question.sum
      puts "#{@current_player.name}: YES! That is correct!"
    else
      puts "#{@current_player.name}: Seriously? No!"
      @current_player.loseLife
    end

    puts "#{@playerOne.score} VS #{@playerTwo.score}"
    if @current_player.lives > 0
      puts '---- NEW TURN ----'
    else
      puts "---- GAME OVER ----"
    end

    @current_player == @playerTwo ? @current_player = @playerOne : @current_player = @playerTwo

   end
end

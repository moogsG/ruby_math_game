class Game
  def initialize
    @playerOne = Players.new('1')
    @playerTwo = Players.new('2')
    @turn = Turn.new(@playerOne, @playerTwo)
  end

  def run

    while @playerOne.lives > 0 && @playerTwo.lives > 0 do
    @turn.newTurn
    end

    puts "#{@turn.current_player.name} wins with a score of #{@turn.current_player.score}!"
  end
end

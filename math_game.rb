class Game

  def initialize
    @turn = Turn.new
  end

  def run

    while $playerOne.lives > 0 && $playerTwo.lives > 0 do
    @turn.newTurn
    end

    puts "#{@turn.current_player.name} wins with a score of #{@turn.current_player.score}!"
  end
end

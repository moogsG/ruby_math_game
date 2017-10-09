
require './players'
require './questions'
require './turn'
require './math_game'
$playerOne = Players.new('1')
$playerTwo = Players.new('2')
game = Game.new
game.run

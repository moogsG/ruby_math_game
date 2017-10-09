class Players
  attr_reader :name, :lives, :score

  def initialize(name)
    @name = "Player #{name}"
    @lives = 3
  end

  def score
    "#{self.lives}/3"
  end

  def loseLife
    @lives -= 1
  end
end

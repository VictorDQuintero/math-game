class Player 
  attr_accessor :name, :lives

  def initialize (name, lives = 3)
    @name = name
    @lives = lives
  end

  def update_lives(evaluation)
    # if evaluation true maintain lives
    # elsif evaluation false decrement lives by 1
    @lives -= 1 unless evaluation
  end

end
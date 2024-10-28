require './math_class'
require './player_class'

class Game 

  def player_instantiation 

    # Get players' names and ask for how many lives they want to have (default is three)

    puts "Choose a name for Player 1 \n"
    player_1_name = gets.chomp
    # puts "Now, choose how many lives you want to have \n"
    # player_1_lives = gets.chomp.to_i
    # if no input provided player_1_lives = 3
    @player_1 = Player.new(player_1_name) 

    puts "Choose a name for Player 2 \n"
    player_2_name = gets.chomp
    # puts "Now, choose how many lives you want to have \n"
    # player_2_lives = gets.chomp.to_i
    # if no input provided player_2_lives = 3
    
    @player_2 = Player.new(player_2_name) 


  end

  def math_logic_instantiation
    @math_logic = Math_Logic.new
  end


  def turn_tracker
    # tracks players' turns and switches players' turns
    # Assume players is an array [player_1, player_2]
    players = [@player_1, @player_2]
    current_player_index = 0
    
    # Function or loop to switch turns
    @current_player = players[current_player_index]

    do |@current_player.@lives != 0|
    self.ask_question

    self.gets_answer

    self.answer_evaluation

    self.players_lives_evaluation
    
    # After the player's turn:
    current_player_index = (current_player_index + 1) % players.size
    end

  end

  def ask_question 
    question, @correct_answer = @math_logic.random_question

    puts question
  end

  def gets_answer
    @user_answer = gets.chomp
  end

  def answer_evaluation
    @evaluation = @math_logic.evaluate(@user_answer, @correct_answer) 
  end

  def players_lives_evaluation 

    # either player_1.update_lives(@evaluation) or player_2.update_lives(@evaluation)

    @current_player.update_lives(@evaluation)

    
  end

  def standings_display

  end

  def game_flow

    # if either players' lives != 0, continue the game

    self.player_instantiation

    self.math_logic_instantiation

    self.turn_tracker

  end



    

end

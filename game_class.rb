require './math_class'
require './player_class'

class Game 

  def player_instantiation 

    puts "Choose a name for Player 1 \n"
    player_1_name = gets.chomp
    
    @player_1 = Player.new(player_1_name) 

    puts "Choose a name for Player 2 \n"
    player_2_name = gets.chomp
       
    @player_2 = Player.new(player_2_name) 


  end

  def math_logic_instantiation
    @math_logic = Math_Logic.new
  end


  
    def turn_tracker(current_player)
      self.ask_question
      puts "#{current_player.name}: #{@question}"
    
     
      self.gets_answer
      self.answer_evaluation
      self.players_lives_evaluation(current_player)
    end
    
    
 

  def ask_question 
    @question, @correct_answer = @math_logic.random_question

  end

  def gets_answer
    @user_answer = gets.chomp.to_i
  end

  def answer_evaluation
    @evaluation = @math_logic.evaluate(@user_answer, @correct_answer) 
    
  end

  def players_lives_evaluation(current_player)
      current_player.update_lives(@evaluation)
  end

  def standings_display
    puts "#{@player_1.name}: #{@player_1.lives}/3 Vs. #{@player_2.name}: #{@player_2.lives}/3 "
    puts "---NEW TURN---"

  end

  def game_flow

  
  self.player_instantiation
  self.math_logic_instantiation

  players = [@player_1, @player_2]
  current_player_index = 0
  

  loop do
    current_player = players[current_player_index]
    other_player_index = (current_player_index + 1) % players.size
    other_player = players[other_player_index]

    self.turn_tracker(current_player)

    if current_player.lives == 0
      puts "#{other_player.name} wins with a score of #{other_player.lives}/3!"
      puts "---GAME OVER---"
      break
    end
    if @evaluation
      puts "#{current_player.name}: YES! You are correct."
    else 
      puts "#{current_player.name}: Seriously? No."
    end
    self.standings_display
    

    current_player_index = (current_player_index + 1) % players.size

  end

  end    

end

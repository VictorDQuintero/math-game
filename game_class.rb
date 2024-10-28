=begin 

Manage Game State:
Track the overall state of the game, including whose turn it is.
is.
Ensure the game continues until one player loses all their lives.
Initialize Players:
Create instances of the Player class for each participant, initializing them with their names and starting lives.
.
Coordinate Gameplay:
Interact with the Math class to generate and display questions for the current player.
Collect input from the player for answers and evaluate them by sending them to the Math class for verification.
Handle Game Logic:
Based on the evaluation result, instruct the Player class to update lives accordingly.
Monitor and switch turns between players systematically.
ly.
User Interaction:
Manage input and output related to game progression, including displaying the current standings and announcing the winner at the end.
.
Start and End Game Loop:
Contain the main game loop that oversees the continuation of rounds and implements checks to determine when the game should end due to a player losing all lives.
es.
This structure ensures the Game class neatly encapsulates all elements of running and managing the game, interacting intelligently with both Player and Math classes to handle specific responsibilities.

=end

class Game 

  def player_instantiation 

    # Get players' names and ask for how many lives they want to have (default is three)

    puts "Choose a name for Player 1 \n"
    player_1_name = gets.chomps
    puts "Now, choose how many lives you want to have \n"
    player_1_lives = gets.chomps.to_i
    # if no input provided player_1_lives = 3
    player_1 = Player.new(player_1_name, player_1_lives) 

    puts "Choose a name for Player 2 \n"
    player_2_name = gets.chomps
    puts "Now, choose how many lives you want to have \n"
    player_2_lives = gets.chomps.to_i
    # if no input provided player_2_lives = 3
    
    player_2 = Player.new(player_2_name, player_2_lives) 


  end


  def turn_tracker
    # tracks players' turns and switches players' turns
  end

  def ask_question 
    puts math.random_question # this might pose a problem as my outline of Math states that random question generates both the question and the correct answer
  end

  def gets_answer
    @user_answer = gets.chomps
  end

  def answer_evaluation
    @evaluation = math.evaluate(user_answer, correct_answer) # This might pose a problem as my outline of Math class has def evaluate(user_answer, correct_answer)
  end

  def players_lives_evaluation 

    # either player_1.update_lives(@evaluation) or player_2.update_lives(@evaluation)

    
  end

  def standings_display

  end

  def game_loop

    # if either players' lives != 0, continue the game

  end



    

end

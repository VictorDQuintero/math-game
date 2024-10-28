=begin 
# Math class should have a random question definition, which prints the question. Gets user input and evaluates its truth value.

class Math 

  def random_question
  # generates question
  # saves answer to the question
  # puts it out there
  end

  def evaluates 
    # chomps answer
    # evaluates user answer against saved answer
    # saves evaluation result
  end

  # method or def for sending the evaluation to game object

end 
=end

class Math
  def random_question
    # generates and returns a question and its correct answer
  end

  def evaluate(user_answer, correct_answer)
    # evaluates user_answer against correct_answer and returns true or false
  end
end
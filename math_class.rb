class Math_Logic
  def random_question
    # generates and returns a question and its correct answer
    num1 = rand(1..20)
    num2 = rand(1..20)
    question = "What does #{num1} plus #{num2} equal?"
    correct_answer = num1 + num2
    [question, correct_answer]
  end

  def evaluate(user_answer, correct_answer)
    # evaluates user_answer against correct_answer and returns true or false
    user_answer == correct_answer
  end
end
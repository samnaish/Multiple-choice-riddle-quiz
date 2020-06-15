class Question
  attr_accessor :prompt, :answer
  def initialize(prompt, answer)
    @prompt = prompt
    @answer = answer
  end
end

prompt1 = "I make two people out of one. What am I?\n(a) A Knife\n(b) A mirror\n(c) Siamese twins"
prompt2 = "I run all around the pasture but never move. What am I?\n(a) A fence\n(b) A dog\n(c) weeds"
prompt3 = "Poor people have it. Rich people need it. If you eat it you die. What is it?\n(a) Money\n(b) Arrogance\n(c) Nothing"
prompt4 = "The more you take away from me, The bigger I get. What am I?\n(a) A hole\n(b) A spot\n(c) A ballon"
prompt5 = "I have four identical brothers. I don't get out as much as them. While the four of them go around,\nI sleep quietly, in the dark. I am often forgotten about, But in times of trouble I will be woken \nand called upon And I will save the day. What am I? \n(a) A toothbrush\n(b) A spare tire\n(c) A sibling"

questions = [
     Question.new(prompt1, "b"),
     Question.new(prompt2, "a"),
     Question.new(prompt3, "c"),
     Question.new(prompt4, "a"),
     Question.new(prompt5, "b")
]

def run_quiz(questions)
     answer = ""
     score = 0
     for question in questions
          puts question.prompt
          answer = gets.chomp()
          #if the answer is correct, increament the score.
          if answer == question.answer
               score += 1
          end
     end
     puts "you got #{score} out of #{questions.length()}"
end

run_quiz(questions)

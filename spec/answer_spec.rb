require('spec_helper')

describe(Answer) do

  describe("#takers") do
    it("tells which taker it has") do
      test_survey = Survey.create({:name => "Favorite stuff",:author => "Johnny Tamborine"})
      test_taker1 = Taker.create({:name => "Jon Snow",:survey_id => test_survey.id})
      test_taker2 = Taker.create({:name => "Jim Bobby Joe",:survey_id => test_survey.id})
      test_question1 = Question.create({:question => "What is your favorite color",:survey_id => test_survey.id})
      test_answer1 = Answer.create({:answer => "Red", :question_id => test_question1.id, :taker_id => test_taker1.id})
     expect(test_answer1.taker()).to(eq(test_taker1))
    end
  end

  describe("#questions") do
    it("tells which question it belongs to") do
      test_survey = Survey.create({:name => "Favorite stuff",:author => "Johnny Tamborine"})
      test_taker1 = Taker.create({:name => "Jon Snow",:survey_id => test_survey.id})
      test_taker2 = Taker.create({:name => "Jim Bobby Joe",:survey_id => test_survey.id})
      test_question1 = Question.create({:question => "What is your favorite color",:survey_id => test_survey.id})
      test_answer1 = Answer.create({:answer => "Red", :question_id => test_question1.id, :taker_id => test_taker1.id})
     expect(test_answer1.question()).to(eq(test_question1))
    end
  end
end

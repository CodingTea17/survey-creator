require("spec_helper")

describe(Survey) do
    it("validates presence of survey name") do
      test_survey = Survey.new({:name => ""})
      expect(test_survey.save()).to(eq(false))
    end

  describe("#takers") do
    it("tells which takers are in it") do
      test_survey = Survey.create({:name => "Favorite stuff",:author => "Johnny Tamborine"})
      test_taker1 = Taker.create({:name => "Jon Snow",:survey_id => test_survey.id})
      test_taker2 = Taker.create({:name => "Jim Bobby Joe",:survey_id => test_survey.id})
      test_question1 = Question.create({:question => "What is your favorite color",:survey_id => test_survey.id})
      test_answer1 = Answer.create({:answer => "Red", :question_id => test_question1.id, :taker_id => test_taker1.id})
     expect(test_survey.takers()).to(eq([test_taker1, test_taker2]))
    end
  end

  describe("#questions") do
    it("tells which questions are in it") do
      test_survey = Survey.create({:name => "Favorite stuff",:author => "Johnny Tamborine"})
      test_taker1 = Taker.create({:name => "Jon Snow",:survey_id => test_survey.id})
      test_question1 = Question.create({:question => "What is your favorite color",:survey_id => test_survey.id})
      test_question2 = Question.create({:question => "What is your favorite animal",:survey_id => test_survey.id})
      test_answer1 = Answer.create({:answer => "Red", :question_id => test_question1.id, :taker_id => test_taker1.id})
     expect(test_survey.questions()).to(eq([test_question1, test_question2]))
    end
  end
end

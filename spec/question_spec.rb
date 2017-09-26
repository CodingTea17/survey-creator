require('spec_helper')

describe(Question) do

  describe("#survey") do
    it("tells which survey it is a part of") do
      test_survey1 = Survey.create({:name => "Favorite stuff",:author => "Johnny Tamborine"})
      test_question1 = Question.create({:question => "What is your favorite color",:survey_id => test_survey1.id})
     expect(test_question1.survey()).to(eq(test_survey1))
    end
  end
end

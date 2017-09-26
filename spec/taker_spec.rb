require('spec_helper')

describe(Survey) do

  describe("#takers") do
    it("tells which takers are in it") do
      test_survey = Survey.create({:name => "Favorite stuff", :question => "What is your favorite color"})
      test_taker1 = Taker.create({:name => "Jon Snow", :answer => "Red", :survey_id => test_survey.id})
      test_taker2 = Taker.create({:name => "Big Boi",:answer => "Blue", :survey_id => test_survey.id})
     expect(test_survey.takers()).to(eq([test_taker1, test_taker2]))
    end
  end
end

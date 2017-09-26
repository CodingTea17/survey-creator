require('spec_helper')

describe(Taker) do

  describe("#takers") do
    it("tells which takers are in it") do
      test_survey = Survey.create({:name => "Favorite stuff",:author => "Johnny Tamborine"})
      test_taker1 = Taker.create({:name => "Jon Snow",:survey_id => test_survey.id})
      test_taker2 = Taker.create({:name => "Big Boi",:survey_id => test_survey.id})
     expect(test_taker1.survey()).to(eq(test_survey))
    end
  end
end

require("spec_helper")

describe(Taker) do

  describe("#takers") do
    it("checks to see if takers are created") do
      test_taker1 = Taker.create({:name => "Jon Snow", :answer => "Red", :survey_id => 1})
     expect(Taker.all()).to(eq([test_taker1]))
    end
  end

  describe("#survey") do
    it("tells which survey it belongs to") do
      test_survey = Survey.create({:name => "Favorite stuff", :question => "What is your favorite color"})
      test_taker = Taker.create({:name => "Jon Snow",:answer => "Red", :survey_id => test_survey.id})
      expect(test_taker.survey()).to(eq(test_survey))
    end
  end
end

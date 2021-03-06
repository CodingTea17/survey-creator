ENV['RACK_ENV'] = 'test'

require("rspec")
require("pg")
require("sinatra/activerecord")
require("survey")
require("taker")
require("answer")
require("question")

RSpec.configure do |config|
  config.after(:each) do
    Answer.all().each() do |answer|
      answer.destroy()
    end
  end

  config.after(:each) do
    Question.all().each() do |question|
      question.destroy()
    end
  end

  config.after(:each) do
    Taker.all().each() do |taker|
      taker.destroy()
    end
  end

  config.after(:each) do
    Survey.all().each() do |survey|
      survey.destroy()
    end
  end
end

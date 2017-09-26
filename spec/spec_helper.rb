ENV['RACK_ENV'] = 'test'

require("rspec")
require("pg")
require("sinatra/activerecord")
require("survey")
require("taker")

RSpec.configure do |config|
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

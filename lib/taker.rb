class Taker < ActiveRecord::Base
  belongs_to(:survey)
  has_many(:answers)
end

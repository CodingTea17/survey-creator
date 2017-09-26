class Survey < ActiveRecord::Base
  has_many(:takers)
  has_many(:questions)
  validates(:name, :presence => true)
end

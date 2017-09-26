class Answer <ActiveRecord::Base
  belongs_to(:question)
  belongs_to(:taker)
  validates(:answer, :presence => true)
end

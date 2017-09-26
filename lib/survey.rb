class Survey < ActiveRecord::Base
  has_many(:takers)
  has_many(:questions)
  validates(:name, :presence => true, :length => {:maximum => 50})
  before_save(:cap_name)

private
  def cap_name
    self.name=(name().split.map!{|w| w.capitalize}.join(" "))
  end
end

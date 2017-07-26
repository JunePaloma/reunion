require 'pry'
class Activity
  attr_reader :name,
              :participants,
              :cost

  def initialize (activity_name)
    @name = activity_name
    @participants = {}
    @cost = 0
  end


  def add_participant(name, money)
    @participants[name] = money
  end

  def total_cost
  @cost = @participants.values.inject do |sum, value|
      sum +value
    end
  end

end

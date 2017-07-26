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
      sum + value
    end
  end

  def split
  total_cost
    @cost/@participants.length
  end

  def owed
    split
    owed = {}
    @participants.each_pair do |name, money|
      owes = split - money
      owed[name] = owes
    end
    owed
  end
  
end

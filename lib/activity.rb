class Activity
  attr_reader :name

  def initialize (activity_name, participants = {})
    @name = activity_name
    @participants = participants
  end

end

require 'pry'
require './lib/activity'

class Reunion
  attr_reader :name,
              :activities,
              :total_cost
  def initialize(name)
    @name = name
    @activities = []
    @total_cost = []
  end

  def add_activity(activity)
    @activities << activity
  end

  def total_cost
    @activities.each do |activity_obj|
      @total_cost << activity_obj.cost
    end
  end

end

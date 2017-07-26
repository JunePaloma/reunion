require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test

  def test_activity_has_name
actv = Activity.new("Brunch")
assert_equal "Brunch", actv.name
  end

  def test_activity_has_participants
    actv = Activity.new("Brunch")
    assert_equal ({}), actv.participants
  end

  def test_activity_can_have_participants_added
    actv = Activity.new("Brunch")
    actv.add_participant("Jim", 20)

    assert_equal ({"Jim" => 20}), actv.participants
  end

  def test_total_cost
    actv = Activity.new("Brunch")
    actv.add_participant("Jim", 20)

    assert_equal 20, actv.total_cost
  end

  def test_activity_can_have_more_than_one_participant
    actv = Activity.new("Brunch")
    actv.add_participant("Jim", 20)
    actv.add_participant("Joe", 40)

    assert_equal ({"Jim" => 20, "Joe" => 40}), actv.participants
    assert_equal 60, actv.total_cost
  end

  def test_activity_costs_can_be_divided
    activity = Activity.new("Brunch")
    activity.add_participant("Jim", 20)
    activity.add_participant("Joe", 40)

    assert_equal 30, activity.split

  end

  def test_that_participants_can_be_owed
    activity = Activity.new("Brunch")
    activity.add_participant("Jim", 20)
    activity.add_participant("Joe", 40)

    assert_equal ({"Jim" => 10, "Joe" => -10}), activity.owed
  end



end

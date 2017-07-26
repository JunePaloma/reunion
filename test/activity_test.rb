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

end

require 'minitest'
require 'minitest/test'
require 'minitest/autorun'
require './lib/reunion'

class ReunionTest < Minitest::Test
  def test_reunion_has_name
    reunion = Reunion.new("Denver")
    assert_equal "Denver", reunion.name
  end

  def test_reunion_has_activities
    reunion = Reunion.new("Denver")
    assert_equal [], reunion.activities
  end

  def test_activity_can_be_added_to_reunion
      reunion = Reunion.new("Denver")
      activity_1 = Activity.new("Brunch")

      reunion.add_activity(activity_1)

      assert_equal 1, reunion.activities.length

  end

  def test_reunion_activity_has_a_cost
    reunion = Reunion.new("Denver")
    activity_1 = Activity.new("Brunch")

    activity_1 = Activity.new("Brunch")
    activity_1.add_participant("Jim", 20)
    activity_1.add_participant("Joe", 40)
    reunion.add_activity(activity_1)

    assert_equal 60, reunion.total_cost
  end
end

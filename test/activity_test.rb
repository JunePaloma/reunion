require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test
  def test_activity_has_name
actv = Activity.new("Brunch")
assert_equal "Brunch", actv.name
  end
end

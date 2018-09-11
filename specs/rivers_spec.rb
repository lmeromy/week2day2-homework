require("minitest/autorun")
require("minitest/rg")
require_relative("../rivers")
require_relative("../fish")

class RiversTest < Minitest::Test

  def setup
    @river = River.new("Tuolumne")

    @fish1 = Fish.new("Ava")
    @fish2 = Fish.new("Bernard")
    @fish3 = Fish.new("Charlotte")

  end


  def test_can_create_river
      assert_equal(River, @river.class())
  end

  def test_river_name
    assert_equal("Tuolumne", @river.river_name)
  end

  def test_add_fish_to_river
    @river.fish_add_to_river(@fish1)
    assert_equal(1, @river.fish_count())
  end

  def test_eat_fish_from_river
    @river.fish_add_to_river(@fish1)
    @river.fish_add_to_river(@fish2)
    @river.fish_add_to_river(@fish3)
    @river.fish_take_away(@fish1)
    assert_equal(2, @river.fish_count())
  end

  # fish_count method already exists!

end

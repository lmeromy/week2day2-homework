require("minitest/autorun")
require("minitest/rg")
require_relative("../bears")
require_relative("../rivers")
require_relative("../fish")


class BearsTest < Minitest::Test

  def setup
    @bear1 = Bear.new("Frederick", "Panda")

    @fish1 = Fish.new("Ava")
    @fish2 = Fish.new("Bernard")

  end

  def test_can_create_bear
      assert_equal(Bear, @bear1.class())
  end

  def test_bear_name
    assert_equal("Frederick", @bear1.bear_name)
  end
  def test_bear_type
    assert_equal("Panda", @bear1.type)
  end

  def test_belly_full?
    assert_equal(0, @bear1.fish_in_belly())
  end

  def test_bear_eats_fish_from_river
    @river1 = River.new("Yuba River")
    @river1.fish_add_to_river(@fish1)
    @bear1.eats_from_river(@river1, @fish1)
    assert_equal(1, @bear1.fish_in_belly())
    assert_equal(0, @river1.fish_count())
  end

### Extension ####

  def test_roar
    assert_equal("ROAR!", @bear1.roar())
  end

  # food_count method is fish_in_belly()

end

require("minitest/autorun")
require("minitest/rg")
require_relative("../fish")

class FishTest < Minitest::Test
  def setup
    @fish1 = Fish.new("Abe")
  end


  def test_can_create_fish
      assert_equal(Fish, @fish1.class())
  end

  def test_fish_name
    assert_equal("Abe", @fish1.fish_name)
  end

end

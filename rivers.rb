class River

  attr_reader :river_name, :river_fish_content
  def initialize(river_name)
    @river_name = river_name
    @river_fish_content = [] #holds fish objects
  end

  def fish_add_to_river(fish)
    @river_fish_content.push(fish)
  end

  def fish_count()
    return @river_fish_content.length()
  end

  def fish_take_away(fish)
    @river_fish_content.delete(fish)
  end

end

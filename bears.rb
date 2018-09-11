class Bear

  attr_reader :bear_name, :type

  def initialize(bear_name, type)
    @bear_name = bear_name
    @type = type
    @bear_belly = []
  end

  def fish_in_belly
    return @bear_belly.length()
  end

  def eats_from_river(river, fishdinner)
    for fish in river.river_fish_content
     if fish == fishdinner
      @bear_belly << fish
    end
  end
    river.fish_take_away(fishdinner)
  end

end

class Stage
  def enter()
    puts "Schooool Stage"
    puts "All the best!!!"
    puts " YOu are soo screwed!"
  end
end

class Time
  def initialize(stage_map)
  end

  def study()
  end
end

class Death < Stage

  def enter()
  end
end

class School < Stage

  def enter()
  end
end

class College < Stage

  def enter()
  end
end

class PlacementSession < Stage

  def enter()
  end
end

class Employed < Stage

  def enter()
  end
end

class LifePath
  def initialize(start_stage)
  end

  def next_stage(stage_name)
  end

  def opening_stage()
  end
end

a_path=LifePath.new('school')
a_game=Time.new(a_path)
a_game.study()

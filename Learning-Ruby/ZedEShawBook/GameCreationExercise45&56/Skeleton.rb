class Scene
  def enter()
  end
end

class Time
  def initialize(scene_map)
  end

  def study()
  end
end

class Death < Scene

  def enter()
  end
end

class School < Scene

  def enter()
  end
end

class College < Scene

  def enter()
  end
end

class PlacementSession < Scene

  def enter()
  end
end

class Employed < Scene

  def enter()
  end
end

class LifePath
  def initialize(start_scene)
  end

  def next_scene(scene_name)
  end

  def opening_scene()
  end
end

a_path=LifePath.new('school')
a_game=Time.new(a_path)
a_game.study()

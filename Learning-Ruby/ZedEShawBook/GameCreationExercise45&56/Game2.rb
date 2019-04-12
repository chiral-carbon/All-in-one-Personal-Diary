require  './Stage.rb'
#require  './Time.rb'
#require  './LifePath.rb'


class Death

  def enter()
    puts "You lost your LIFE"
    puts "GAME OVER"
    exit(1)
  end
end

class School

  def enter()
    puts "Schooool Stage"
    puts "All the best!!!"
    puts " You are soo screwed!"
    puts "What is a+b?"
    print ">"

    action = $stdin.gets.chomp

    if action == "c"
      puts " Great! You move to next level"
      return 'college'
    else
      puts " You lose!"
      return 'death'
    end
  end
end

class College

  def enter()
    puts "College Stage"
    puts "All the best!!!"
    puts " You are soo screwed!"
    puts "What is a+b?"
    print ">"

    action = $stdin.gets.chomp

    if action == "c"
      puts " Great! You move to next level"
      return 'placement_session'
    else
      puts " You lose!"
      return 'death'
    end
  end
end

class PlacementSession

  def enter()
    puts "Placement session Stage"
    puts "All the best!!!"
    puts " You are soo screwed!"
    puts "What is a+b?"
    print ">"

    action = $stdin.gets.chomp

    if action == "c"
      puts " Great! You win"
      return 'employed'
    else
      puts " You lose!"
      return 'death'
    end
  end
end

class Employed 

  def enter()
    puts "You won!"
  end
end

class Time
  def initialize(stage_path)
    @stage_path =stage_path
  end

  def study()
    current_stage=@stage_path.opening_stage()
    last_stage = @stage_path.next_stage('employed')

    while current_stage!=last_stage
      next_stage_name = current_stage.enter()
      current_stage = @stage_path.next_stage(next_stage_name)
    end
      current_stage.enter()
  end
end
class LifePath

  @@stages = {
   'school' => School.new(),
   'college' => College.new(),
   'placement_session' => PlacementSession.new(),
   'employed' => Employed.new(),
   'death' => Death.new()
    }

  def initialize(start_stage)
    @start_stage=start_stage
  end

  def next_stage(stage_name)
    val=@@stages[stage_name]
  end

  def opening_stage()
    return next_stage(@start_stage)
  end
end

a_path=LifePath.new('school')
a_game=Time.new(a_path)
a_game.study()

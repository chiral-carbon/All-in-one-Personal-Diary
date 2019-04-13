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
    puts "Welcome to the Game of LIFE."
    puts "Here you will be tested on your skills and if you stand the test, you will get a chance to challange youself in the next round."
    puts "This is the School"
    puts "All the best!"
    puts "Are you going to study"
    print ">"

    action = $stdin.gets.chomp

    if action == "NO"
      puts "Great! You move to next level"
      return 'college'
    else
      puts "You lose!"
      return 'death'
    end
  end
end

class College

  def enter()
    puts "Welcome to  the College"
    puts "All the best!"
    puts "Did you get to sleep?"
    print ">"

    action = $stdin.gets.chomp

    if action == "NO"
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
    puts "You are in the Placement session"
    puts "All the best!"
    puts "What is a+b?"
    print ">"

    action = $stdin.gets.chomp

    if action == "a+b"
      puts " Great! You win."
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

#i = 0
#numbers = []

#while i < 6
#  puts "At the top i is #{i}"
#  numbers.push(i)

#  i += 1
#  puts "Numbers now: ", numbers
#  puts "At the bottom i is #{i}"
#end

#puts "The numbers: "

# remember you can write this 2 other ways?
#numbers.each {|num| puts num }

#Study Drill

def print_num(n,inc)
  i=0
  numbers=[]

  while i < n
    puts "At the top i is #{i}"
    numbers.push(i)

    i += inc
    puts "Numbers now: ", numbers
    puts "At the bottom i is #{i}"
  end
  puts "The numbers: "
  numbers.each {|num| puts num }
end

print_num(7,2)



  def print_num_for(n,inc)
    i=0
    numbers=[]

      (0..n).each do |i|
      puts "At the top i is #{i}"
      numbers.push(i)


      puts "Numbers now: ", numbers
      puts "At the bottom i is #{i}"
    end
    puts "The numbers: "
    numbers.each {|num| puts num }
  end

  print_num_for(3,2)

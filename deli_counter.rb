# Build the line method that shows everyone their current place in the line. If there is
# nobody in line, it should say "The line is currently empty.".


def line (array)
deli_line = []
  if array.size == 0
    puts "The line is currently empty."
  else
    array.each_with_index do |person, index|
    deli_line.push( "#{index + 1}. #{person}" )
  end
  puts "The line is currently: #{deli_line.join(" ")}"
end
end

#"The line is currently: 1. Logan 2. Avi 3. Spencer"

# Build a method that a new customer will use when entering the deli. The take_a_number method should accept
# two arguments, the array for the current line of people (katz_deli), and a string containing the name of the
# person wishing to join the line. The method should return the person's name along with their position in line.
# Top-Tip: Remember that people like to count from 1, not from 0 ("zero") like computers.

def take_a_number(katz_deli, name)
  katz_deli.push(name)
  puts "Welcome, #{name}. You are number #{katz_deli.size} in line."
end


#Build the now_serving method which should call out (i.e. puts) the next person in line and
#then remove them from the front. If there is nobody in line, it should call out (puts) that
#"There is nobody waiting to be served!".

def now_serving(katz_deli)
  if katz_deli.size == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.shift()}."
  end
end

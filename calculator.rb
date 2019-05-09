@math = []

def cal1
  begin
  puts "What is the first number?"
  print "> "
  @a = Float(gets.strip)
  rescue
    puts "Error.. please enter a number"
    retry
  end
  @math.push(@a)
end

def operator  
  puts "What is the operator? (+,-,*,/)"
  print "> "
  @b = gets.strip
  case @b
  when "+"
    @math.push(@b)
  when "-"
    @math.push(@b)
  when "*"
    @math.push(@b)
  when "/"
    @math.push(@b)
  else
    puts "Error.. please enter an operator (+,-,*,/)"
    operator
  end
end

def cal2
  begin
  puts "what is the second number?"
  print "> "
  @c = Float(gets.strip)
  rescue
    puts "Error.. please enter a number"
    retry
  end
  @math.push(@c)
  case @b
  when "+"
    @math.push(@a + @c)
  when "-"
    @math.push(@a - @c)
  when "*"
    @math.push(@a * @c)
  when "/"
    @math.push(@a / @c)
  end
  puts "Your answer is #{@math.last}"
end

def cal_cont
  clear
  puts "What is the next operator (+,-,*,/)?"
  print "> "
  @d = gets.strip
  case @d
  when "+"
    @math.push(@d)
  when "-"
    @math.push(@d)
  when "*"
    @math.push(@d)
  when "/"
    @math.push(@d)
  else
    puts "Error.. please enter an operator (+,-,*,/)"
    cal_cont
  end
  cal_cont2
end


def cal_cont2
  begin
  puts "What is the next number?"
  print "> "
  @e = Float(gets.strip)
  rescue
    puts "Error.. please enter a number"
    retry
  end
  @math.push(@e)
  num_1 = @math[-3]
  num_2 = @math[-1]
  case @math[-2]
  when "+"
    @math.push(num_1 + num_2)
  when "-"
    @math.push(num_1 - num_2)
  when "*"
    @math.push(num_1 * num_2)
  when "/"
    @math.push(num_1 / num_2)
  end
  puts "Your answer is #{@math.last}"
  cal_cont
end

def clear
  puts "Would you like to continue, clear, or quit?"
  print "> "
  choice = gets.strip
  if choice == "clear"
    @math.clear
    puts "Resetting..."
    order
  elsif choice == "continue"
  elsif choice == "quit"
    puts "Goodbye!"
    exit
  else
    puts "Incorrect option!\nPLEASE ENTER: continue, clear, or quit."
    clear
  end
end

def order
cal1
operator
cal2
cal_cont
end

puts "Welcome to the Ruby Calculator!"
puts
order





class OrangeTree
  def initialize name
    @name = name
    @height = 1
    @age = 1
    @oranges = 0
    @watered = 3
    puts "You have planted an orange tree that is #{@age} year old named #{@name}."
    puts "It is 1 meter tall."
  end

  def water
    if @watered <= 1
      puts "Your tree seems to be revitalized!"
      @watered = 3
    elsif @watered == 2
      puts "You water your tree."
      @watered += 1
    else
      puts "#{@name} doesn't need water."
    end
  end

  def look_at
    puts "Your orange tree is #{@age} years old."
    puts "There are #{@oranges} oranges growing on it."
    if @watered == 3
      puts "It looks well-watered."
    else
      puts "You think it could use some water."
    end
  end

  def pick_oranges
    if @oranges == 0
      puts "There are no oranges to pick!"
    else
      @oranges -= 1
      puts "You pick an orange!"
      puts "You peel it..."
      puts "and then bite down into it."
      puts "Mmm, juicy!"
      puts "There are now #{@oranges} oranges left growing on #{@name}."

    end
  end

  def end_the_year
      puts "Do you wish to end this year? (yes/no)"
      answer = gets.chomp
      answer = answer.downcase      
      if answer == "yes"
        passage_of_time
      elsif answer == "no"
        puts "You gaze at the tree."
      elsif answer.downcase != "yes" || answer.downcase != "no"
        puts "Please say 'yes' or 'no'!"
        end_the_year
      end
    end
  end

  private #make this private
  
  def grow
    if @age <= 5
      @age = @age + 1
      puts "Your tree ages by one year."
      puts "It's not quite mature yet..."
      @height = @height + 1
      puts "Your tree has grown! It is now #{@height} meters tall!"
    elsif @age > 5 && @age <= 20
      @age = @age + 1
      puts "Your tree is now #{@age} years old."
      produce_oranges
    else
      puts "Your tree is over 20 years old!"
      puts "Suddenly the orange tree turns black with age..."
      puts "withers..."
      puts "and dies..."
      exit
    end
  end

  def produce_oranges
    if @oranges == 0
      @oranges = @oranges + (@age * 2.33)
    end
  end

  def passage_of_time
    if @watered == 0
      puts "Your tree turns gray, the leaves fall off, and dies."
      puts "Looks like you forgot to water #{@name}!"
      exit
    elsif @watered > 0
      @watered = @watered - 1
    end
    if @oranges > 0
      @oranges = 0
      puts "With the passing of the seasons, the unpicked oranges ripen and fall off #{@name}'s branches."
      puts "There they rest to be taken by animals, time, and bacteria."
      puts "Another year has passed."
    end
    return grow
  end
end

tree = OrangeTree.new "Mikey"

tree.look_at
tree.pick_oranges
tree.end_the_year
tree.end_the_year
tree.end_the_year
tree.look_at
tree.water
tree.water
tree.look_at
tree.end_the_year
tree.end_the_year
tree.look_at
tree.water
tree.water
tree.end_the_year
tree.look_at
tree.end_the_year
tree.look_at
tree.water
tree.pick_oranges
tree.look_at
tree.water
tree.end_the_year
tree.end_the_year
tree.look_at
tree.water
tree.end_the_year
tree.end_the_year
tree.look_at
tree.water
tree.end_the_year
tree.end_the_year
tree.end_the_year
tree.water
tree.look_at
tree.end_the_year
tree.end_the_year
tree.water
tree.water
tree.end_the_year
tree.end_the_year
tree.end_the_year
tree.water
tree.water
tree.end_the_year
tree.end_the_year

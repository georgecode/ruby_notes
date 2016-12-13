class Santa
  #This is how you make a class attribute readable "a getter"
  #attr_reader :age, :ethnicity
  #attr_reader :ethnicity

  #This is how you make a class attribute readable and writeable
  #attr_accessor :gender

  #This is how you make a class attribute only writable(rarely used)
  #attr_writer




  def speak
    p "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    p "That was a good #{cookie_type}!"
  end

  # def initialize()
 def initialize(gender, ethnicity)
    #These things with the @ are attributes
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    p "Initializing Santa instance ..."
  end
  # add 1 year to santas age
  def celebrate_birthday
    @age += 1
  end

  # move deer to last place
  def get_mad_at(deer_name)
    @reindeer_ranking << @reindeer_ranking.delete(deer_name)
  end
  # setter method for attributes new gender
  def new_gender=(new_gender)
    @gender = new_gender
  end

  # getter method for attributes age
  def age
    @age
  end
  # getter method for attributes ethnicity
  def ethnicity
    @ethnicity
  end



end

# test code
# jingles = Santa.new()
# jingles.speak
# jingles.eat_milk_and_cookies("sugar cookie")


# function to print tests
def tester(santas)
  puts "\n-------------------------\n"
  p santas[0]
end


#test code
santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")


# Add some diverse initializations as driver code with a loop
genders =["Cisgender","Androgyne","Nonconforming", "Transpecies"]
ethnicity =["Native Hawaiian", "Native American", "Aboriginal", "Gerald Broflovski(dolphin)"]

genders.length.times do |i|
  santas << Santa.new(genders[i], ethnicity[i])
end

# Prettyer santa print out (still kinda ugly but readable enough for tests)
# santas.each do |santa|
#   p santa
#   puts "-----------------"
# end


# function to print tests
def tester(santas)
  puts "\n-------------------------\n"
  p santas[0]
end

# Test birthday
# tester(santas)
# santas[0].celebrate_birthday
# tester(santas)

#test deer to last place
# tester(santas)
# santas[0].get_mad_at("Dancer")
# tester(santas)

#test gender changer
# tester(santas)
# santas[0].new_gender = "male"
# tester(santas)

#Test age and ethnicity
tester(santas)
p santas[0].age
p santas[0].ethnicity
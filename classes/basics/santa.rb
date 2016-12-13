class Santa
  attr_reader :ethnicity, :reindeer_ranking
  attr_accessor :gender, :age

  def speak
    p "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    p "That was a good #{cookie_type}!"
  end

  # def initialize()
 def initialize(gender, ethnicity)
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

end#------end Santa class

# test code was not sure if i was supose to get rid of this so i kept it just incase
# jingles = Santa.new()
# jingles.speak
# jingles.eat_milk_and_cookies("sugar cookie")


genders =["Cisgender","Androgyne","Nonconforming", "Transpecies","agender", "female","bigender","male", "gender free","gender fluid","N/A",]

ethnicity =["Native Hawaiian", "Native American", "Aboriginal", "Gerald Broflovski(dolphin)","black","Latino","white","Japanese", "prefer not to say","Mystical Creature (unicorn)","N/A"]

# create new santa array
santas = []

#create a shitload of santas and randomyly select from arrays
150.times {
  santas << Santa.new(genders.shuffle[0], ethnicity.shuffle[0])
}

#random age between 0 and 140
santas.each do |santa|
  santa.age = rand(140)
end

#print out the attributes of each Santa
santas.each do |santa|
  puts "\nThis Santas Information"
  puts "\nGender: #{santa.gender}"
  puts "Ethnicity: #{santa.ethnicity}"
  puts "Age: #{santa.age}"
  puts "Reindeer ranking: #{santa.reindeer_ranking}"
  puts "\n\n-------------------------"
end




# # function to print tests
# #(***MUST UN-COMMENT FOR BELOW TESTS TO WORK***)
# def tester(santas)
#   puts "\n-------------------------\n"
#   p santas[0]
# end

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
# santas[0].gender = "male"
# tester(santas)

#Test age and ethnicity
# tester(santas)
# p santas[0].age
# p santas[0].ethnicity

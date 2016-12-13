dogs = [
  "bonus",
  "kona",
  "coco",
  "izzy",
  "nola",
  "bear"
]
puts dogs

dogs.each do |dog|
  puts "#{dog} has been fed!"
end
puts"\n----hashes-----\n"


fav_food ={
  bonus: "roni",
  kona: "cheese",
  coco: "chicken",
  izzy: "shoes",
  nola: "fingers",
  bear: "ice cream"
}

fav_food.each do |key, value|
  puts "#{key}'s fav food is #{value}!"
end

puts"\n----code blocks-----\n"


3.times { |x| puts "I'm printing something from a block, and x is #{x}!" }

puts"\n----------------\n"

["a","b","c","d"].each { |item| puts "Now the block parameter has a value of the current array item: #{item}" }

puts"\n----------------\n"

2.times { puts "This block works just fine even without a parameter." }

puts"\n----------------\n"

dinos = ["T-rex", "brontosaurus", "pterodactyl"]
number_of_dinos = dinos.length
number_of_dinos.times { |i| puts dinos[i] }

puts"\n-------Blocks in a method---------\n"
my_name = "george"

def say_hello(name)

  puts "hello to you!"
  yield(name)
  yield
  yield("dana")
  yield("fart mc'fartington")
end

say_hello(my_name) {|name1|puts "how are you #{name1}"}

puts"\n-------Blocks .each do---------\n"

letters =["a","b","c","d","e"]
puts "Original array:"
p letters

letters.each do |letter|
  puts letter
end

puts"after.each is ran:"
p letters

puts"\n-------Blocks .map and .map!---------\n"

letters =["a","b","c","d","e"]
puts "original array:"
p letters

letters.map! do |letter|
  puts letter
  letter.next
end

puts"after .map! is ran:"
p letters
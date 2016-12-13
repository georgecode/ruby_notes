# to use require_relative 'shout'
# to see methods Shout.singleton_methods

# module Shout
#   def self.yell_angrily(words)
#   words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#     words + "!!!" + " :)"
#   end

# end

# puts Shout.yell_angrily("Mucking work")
# puts Shout.yell_happily("I can't belive that worked first try!!")



# Up date shout(We're shouting I felt the need to .upcase)
module Shout

  def yell_angrily(words)
    words.upcase!
    words + "!!!" + " :("
  end

  def yell_happily(words)
    words.upcase!
    words + "!!!" + " :)"
  end

end
#add two classes of things that might shout
class The_Isley_Brothers
  include Shout
end

class Donald_trump
  include Shout
end

#driver code
donald_trump = Donald_trump.new
puts donald_trump.yell_angrily("You're Fired")

the_isley_brothers = The_Isley_Brothers.new
puts the_isley_brothers.yell_happily("Put your hands up and shout, come on now and shout")




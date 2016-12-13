#ruby word_guessing.rb

# class Guessing_game
#   def initialize(word)
#     @word = word
#   end

#   def print_word
#    @word
#   end

# end

# fuck = Guessing_game.new("hellllo")

# fuck.print_word


class Guessing_game
  attr_reader :word
  def initialize(word)
    @word =word
  end

  def word_input
   @word
   @word
  end

  def word_array
    @word.split('')
  end

  def hint
    @word.split("").map{|x| "_ "}
  end

  def push_guess(array, guess)
    array << guess
  end

  def add_letter(word,guess,hint)
    count = 0
    word.map do |letter|
      if letter == guess
        hint[count]= letter
        # p under_scores
      end
      count += 1
    end #end word.map
    hint
  end #end add_letter

  def guess_limit
    (@word.length / 2.to_f).ceil
  end

  def repeat_checker(array,guess)
    array.include?(guess)
      # a = [ "a", "b", "c" ]
      # a.include?("b")   #=> true
  end

  # def limit_met(limit,array)
  #   if limit >= array.length
  #     false
  #   else
  #     true
  #   end
  # end

  def final_message(limit,user_guess)
    if limit != 0
      p "YOU LOSE! Better luck next time"
    else
       p "You guessed #{user_guess} you're correct!!"
    end
  end


end#end guessing game class

  game = Guessing_game.new("xxxhellox")

game = Guessing_game.new("xxxhellox")
puts game.word
# guess.print_word
# p game.hint
limit = game.guess_limit
array =[]
word = game.word_array
hint = game.hint


# while game.limit_met(limit,array) == false
while limit > array.length

  puts "Guess the word or a letter"
  puts hint.join('')
  user_guess = gets.chomp
  if user_guess == word.join('')
      # p "You guessed #{user_guess} you're correct!!"
      limit = 0
  else
    unless game.repeat_checker(array,user_guess)
      game.add_letter(word,user_guess,hint)
      array<<user_guess
      end#end unless
      try_left = limit-array.length
      puts "\nNumber of trys left#{try_left}"
  end#end if else
end#end while
# p limit


# def final_message(limit,user_guess)
#   if limit != 0
#     p "YOU LOSE! Better luck next time"
#   else
#      p "You guessed #{user_guess} you're correct!!"
#   end
# end
# final_message(limit,user_guess)
game.final_message(limit,user_guess)








  # def repeat_checker(array,guess)
  #   array.include?(guess)
  #     # a = [ "a", "b", "c" ]
  #     # a.include?("b")   #=> true
  # end





# word = game.word_array
# p word

# guess_new = "x"
# p guess_new

# hint_new = game.hint
# p hint_new

# p hint_new
#  game.add_letter(word,guess_new,hint_new)
# p hint_new
# array =["stuff"]
# game.push_guess(array,"poop")
# game.push_guess(array,"e")
# game.push_guess(array,"h")
# game.push_guess(array,"p")
# game.push_guess(array,"p")
# game.push_guess(array,"h")
# p array
# p game.guess_limit
# limit = game.guess_limit
# p game.limit_met(limit,array)
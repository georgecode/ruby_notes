class OrangeTree
  attr_reader :oranges

  def initialize(age =0,height = 1)
    @age = age
    @height = height
    @dead = false
    @oranges =[]
  end

  def growOranges
    @age +=1
    rand(3..6).times do
      @oranges.push(Orange.new)
    end
  end

  def numOranges
    p @oranges.length
  end

  def sing
    p "fruit song"
  end

  def wind
    p "shake shake"
  end


end

# p Vehical.new(2,"black","Harley")
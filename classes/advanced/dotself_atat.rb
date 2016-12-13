class Person
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def return_self
    return self
  end
end

guy = Person.new("Matt","Weingarten")
p guy.full_name
p guy.return_self

guy_1 = Person.new("Matt","Weingarten")
p guy_1.return_self
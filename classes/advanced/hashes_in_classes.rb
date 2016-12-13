class SecretAgentBot
  attr_accessor :location

@@list = []

def self.list
  @@list
end

  def initialize(args={})
    @serial_no = args[:serial_no]
    @name = args[:name]
    @fake_name = args[:fake_name]
    @fake_occupation = args[:fake_occupation]
    @passcode = args[:passcode]
    @location = args[:location]
    @@list << @serial_no
  end



end

# NEW
puts "Secret Agent Bot list:"
p SecretAgentBot.list
#=> []

# OLD
agent = SecretAgentBot.new({
  serial_no: 'SAB928347236',
  name: 'Natasha',
  fake_name: 'Jen Gilbert',
  fake_occupation: 'programming teacher',
  passcode: '28shkwh176',
  location: 'robot warehouse'
})

# OLD
agent.location = "San Francisco, CA, USA"

# NEW
puts "Secret Agent Bot list:"
p SecretAgentBot.list
#=> ['SAB928347236']

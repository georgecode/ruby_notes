# regx guide

# https://bneijt.nl/pr/ruby-regular-expressions/

p "hello".gsub(/[aeiou]/, '*')
#=> "h*ll*"

p "hello".gsub(/([aeiou])/, '<\1>')
#=> "h<e>ll<o>"

p "hello".gsub(/./) {|s| s.ord.to_s + ' '}
#=> "104 101 108 108 111 "

p "hello".gsub(/(?<foo>[aeiou])/, '{\k<foo>}')  #=> "h{e}ll{o}"

p 'hello'.gsub(/[eo]/, 'e' => 3, 'o' => '*')    #=> "h3ll*"

 # '480014430', '480.01.4430', and '480--01--4430' would all be formatted '480-01-4430'.
str = '480.01.4430'

# p str.gsub(/(\d{3})(\d{2})(\d{4})/, '\1-\2-\3')

p str.gsub(/(\d{3})(\d{2})(\d{4})/, '\1-\2-\3')

p str.gsub(/(\d{3}).*?(\d{2}).*?(\d{4})/, '\1-\2-\3')
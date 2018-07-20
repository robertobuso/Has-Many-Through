require_relative "lib/Model1.rb"
require_relative "lib/Model2.rb"
require_relative "lib/Model3.rb"

prince = Person.new("Prince")

the_atlantic = Magazine.new("The Atlantic", "news", 6.99)

puts prince.name

puts the_atlantic.category

puts prince.buy_subscription(the_atlantic, "quarterly").type

puts prince.buy_subscription(the_atlantic, "quarterly").status

prince.cancel_subscription(the_atlantic)

prince.cancel_subscription(the_atlantic)

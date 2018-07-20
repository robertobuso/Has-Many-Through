class Person
  attr_reader :name
  attr_accessor :age, :gender

  @@all = []

  def initialize(name)
    @name = name
    @age = age
    @gender = gender
    @@all << self
  end

  def self.all
    @@all
  end

  def buy_subscription(magazine, type)
    subscription = Subscription.new(self, magazine, type)
  end

def my_subscriptions
  Subscription.all.select do |subscription|
    subscription.person == self
  end
end

  def cancel_subscription(magazine)
    my_subscriptions.each do |subscription|
      if subscription.magazine == magazine
        if subscription.status == "cancelled"
          puts "You already cancelled this subscription."
        else subscription.status = "cancelled"
          puts "Subscription cancelled."
        end
      end
    end
end

end

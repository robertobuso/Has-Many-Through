class Subscription
  attr_accessor :person, :magazine, :type, :status

  @@all = []

  def initialize(person, magazine, type)
    @person = person
    @magazine = magazine
    @type = type
    @status = "active"
    @@all << self
  end

  def self.all
    @@all
  end


end

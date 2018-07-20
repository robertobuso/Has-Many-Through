class Magazine
  attr_reader :title
  attr_accessor :category, :price

  @@all = []

  def initialize(title, category, price)
    @title = title
    @category = category
    @price = price
    @@all << self
  end

  def self.all
    @@all
  end

end

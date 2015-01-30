class Restaurant

  attr_reader :price, :description, :comments, :id, :best_dish
  attr_reader :recommender, :category, :location, :website, :name
  
  def initialize(args)
    @id          = args[:id] 
    @recommender = args[:recommender]
    @category    = args[:category]
    @name        = args[:name]
    @price       = args[:price]
    @description = args[:description]
    @comments    = args[:comments]
    @best_dish   = args[:best_dish]
    @location    = args[:location]
    @website     = args[:website] 
    @image       = args[:image]
  end

  def to_s
    "Recommender: #{@recommender}, Location: #{@location}, Website: #{@website}, /
    Category: #{@category}, Name: #{@name}, Price: #{@price}, Best_dish: #{@best_dish}, /
    Description: #{@description}, Comments: #{@comments}"
  end
end


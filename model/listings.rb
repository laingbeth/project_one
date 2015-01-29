require_relative './restaurant'

class Listing

    attr_reader :recommender, :category, :website, :location, :name, :price, :description, :comments, :best_dish

  def self.all
    [
      Restaurant.new(recommender: "Allyson",
               category: "Mexican",
               name: "Plaza Fiesta Food Court",
               price: "$",
               comments: "Best deal for the price and parking is free!",
               best_dish: "The Pambazo",
               location: "4166 Buford Hwy Atlanta GA 30345",
               website:  "http://www.plazafiesta.net/",
               description: "Legend tells of a sandwich made from torta 
               bread dipped in ranchero sauce, filled with chorizo sausage, 
               potatoes, lettuce, cheese & sour cream."
               )
    ]
  end
end  
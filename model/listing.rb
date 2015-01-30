require_relative './restaurant'

class Listing

    attr_reader :ID, :description, :comments, :best_dish, :image
    attr_reader :recommender, :category, :website, :location, :name, :price

  def self.all
    [
      Restaurant.new(ID: "010", recommender: "Allyson",
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
               ),
       Restaurant.new(ID: "020", recommender: "Dave",
               category: "Home Cookin",
               name: "My Home",
               price: "$$",
               comments: "When someone cooks!",
               best_dish: "Scrambled eggs and toast",
               location: "1234 Buford Hwy Atlanta GA 30345",
               website:  "http://www.mykitchen.net/",
               description: "We may not cook often but when we do it is really great."
               )
    ]
  end

    def self.find(name)
      self.all.find do |restaurant|
        restaurant.name = name
      end
    end

end  
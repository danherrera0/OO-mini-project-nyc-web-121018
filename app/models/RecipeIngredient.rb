class RecipeIngredient

attr_accessor :ingredient , :allergen

@@all =[]

def initialize(ingredient, allergen)
  @ingredient = ingredient
  @allergen = allergen
  @@all << self
end

def self.all
  @@all
end

end

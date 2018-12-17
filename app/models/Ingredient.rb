class Ingredient

attr_accessor:ingredient

@@all =[]

def initialize(ingredient)
  @ingredient = ingredient
  @@all << self
end

def self.all
  @@all
end

def recipe_ingredient
  RecipeIngredient.all.select do |recipe_ingredient|
    recipe_ingredient.ingredient == self
  end
end

def ingredients
  recipe_ingredient.map do |recipe_ingredient|
    self.recipe_ingredient.ingredient
  end
end

def allergen
  Allergen.all.select do |allergen|
    allergen.ingredient == self
  end
end

def user
  self.allergen.map do |allergen|
    allergen.user
  end
end


end

class User

attr_accessor :name

@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def recipe_card
  RecipeCard.all.select do |recipecard|
    recipecard.user == self
  end
end

def recipes
  self.recipe_card.map do |recipecard|
    recipecard.recipe
  end
end

def allergens
  Allergen.all.select do |allergen|
    allergen.user == self
  end
end
#

def my_allergens
  self.allergens.map do |allergen|
  allergen.user == self
end
end

def ingredient
  self.allergens.map do |allergen|
    allergen.ingredient
  end
end

def declare_allergen(ingredient) #???
  self.allergen = ingredient
end

def top_three_recipes
end

def most_recent_recipe
  self.all.last
end

end

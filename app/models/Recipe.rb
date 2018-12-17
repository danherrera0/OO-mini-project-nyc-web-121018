class Recipe

attr_accessor :ingredients

@@all = []

def initialize(ingredients)
  @ingredients = ingredients
  @@all << self
end

def self.all
  @@all
end

def recipe_card
  RecipeCard.all.select do |recipecard|
    recipecard.recipe == self
  end
end

def users
  self.recipe_card.map do |recipecard|
    recipecard.user
  end
end

def recipe_ingredient
  RecipeIngredient.all.select do |recipe_ingredient|
    recipe_ingredient == self
  end
end

def ingredients
  self.recipe_ingredient.map do |recipe_ingredient|
    recipe_ingredient.ingredient
  end
end

def allergens
  self.ingredient.map do |ingredient|
    ingredient.allergen
  end
end

def self.most_popular
  self.users.select do |user|

end

def add_ingredients(ingredients)#???
  ingredients.recipe == self
end

end

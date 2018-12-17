class RecipeCard
attr_accessor :user, :recipe

@@all = []

def initialize(user, recipe, ingredients)
  @user = user
  @recipe = recipe
  @ingredients = ingredients
  @@all << self
end

def self.all
  @@all
end

end

require_relative '../config/environment.rb'



# ingredients
i1 = Ingredient.new("apples")
# i2 = Ingredient.new("crust")
i3 = Ingredient.new("shrimp")
# i4 = Ingredient.new("garlic")
# i5 = Ingredient.new("beef")
i6 = Ingredient.new("dough")

# recipes
apple_pie = Recipe.new(i1)
shrimp_scampi = Recipe.new(i3)
bread= Recipe.new(i6)

u1 = User.new("yisroel")
u2 = User.new("dania")
u3 = User.new("mike")
u4 = User.new("joe")



#recipe_card user, recipe, ingredients

a_recipecard = RecipeCard.new(u1, apple_pie, i1)
s_recipecard = RecipeCard.new(u2, shrimp_scampi,i3)
b_recipecard = RecipeCard.new(u3, bread,i6)

a1 = Allergen.new(u1, i3)#shrimp
a2 = Allergen.new(u3, i6)

#recipe ingredient - ingredient , allergen

ri1 = RecipeIngredient.new(i3,a1)
ri2 = RecipeIngredient.new(i6,a2)

binding.pry

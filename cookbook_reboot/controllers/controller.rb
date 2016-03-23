require_relative '../repositories/cookbook'
require_relative '../views/view'

class RecipeController

  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
  recipe_list = @cookbook.all
    @view.display_all(recipe_list)
  end

  def create
    attributes = @view.ask_user_for_new_recipe # get the user input
    recipe = Recipe.new(attributes) # put the attributes into your recipe mould
    # store your recipe in the repo (by calling the method that adds to the cookbook, and storing the new recipe)
    @cookbook.add_recipe(recipe)
  end

  def destroy
    recipe_id = @view.delete_which_recipe
    @cookbook.remove_recipe(recipe_id)
  end
end




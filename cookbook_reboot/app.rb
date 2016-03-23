require_relative "controllers/controller"
require_relative "repositories/cookbook"
require 'csv'

# csv_file   = File.join(__dir__, 'recipes.csv')
# cookbook = Cookbook.new(csv_file)
# controller = Controller.new(cookbook)

# router = Router.new(controller)


require_relative "models/recipe"


recipe = Recipe.new

recipe_csv_file = File.join(__dir__,'data/recipes.csv')
cookbook2 = Cookbook.new
p cookbook2



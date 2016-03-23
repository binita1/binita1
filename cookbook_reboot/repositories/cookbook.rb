require_relative '../views/view'
require_relative "../models/recipe"
require 'csv'

class Cookbook
  def initialize
    @recipes = []
    @csv_file = File.join(__dir__,'../data/recipes.csv')
    load_csv
  end

  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
    attributes = {
        name: row[0],
        description: row[1]
      }
      @recipes << Recipe.new(attributes)
    end
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def remove_recipe(recipe_id)
    @recipes.delete_at(recipe_id)
  end

  def all
    @recipes
  end

end

cookbook1 = Cookbook.new
p cookbook1

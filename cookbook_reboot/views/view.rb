class RecipeView
  def ask_user_for_new_recipe
    puts "Enter recipe name:"
    name = gets.chomp
    puts "Enter a description for your recipe:"
    description = gets.chomp
    return {name: name, description: description}
  end

  def delete_recipe_id
    puts "Which number recipe do you want to delete?"
    id = gets.chomp
  end

  def display_all(recipes)
    recipes.each_with_index do |recipe|
      puts "#{index+1} - #{recipe.name}"
    end
  end
end



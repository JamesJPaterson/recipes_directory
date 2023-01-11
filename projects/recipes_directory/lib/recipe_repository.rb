require_relative './recipe'

class RecipeRepository
    def all
        recipes = []
        sql = 'SELECT id, recipe_names, cooking_time, recipe_rating FROM recipes;'
        result = DatabaseConnection.exec_params(sql, [])

        result.each do |record|
            recipe = Recipe.new
            
            recipe.id = record['id']
            recipe.recipe_names = record['recipe_names']
            recipe.cooking_time = record['cooking_time']
            recipe.recipe_rating = record['recipe_rating']

            recipes << recipe
        end

        return recipes
    end

    def find(id)

        sql = 'SELECT id, recipe_names, cooking_time, recipe_rating FROM recipes WHERE id = $1;'
        params = [id]
        result = DatabaseConnection.exec_params(sql, params)
        recipe = Recipe.new
        recipe.recipe_names = result[0]['recipe_names']
        recipe.cooking_time = result[0]['cooking_time']
        recipe.recipe_rating = result[0]['recipe_rating']
        return recipe.recipe_names + " " + recipe.cooking_time + " " + recipe.recipe_rating
    end
end
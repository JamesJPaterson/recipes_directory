require 'recipe_repository'
require 'recipe'

RSpec.describe RecipeRepository do
    def reset_recipes_table
        seed_sql = File.read('spec/seeds_recipes.sql')
        connection = PG.connect({ host: '127.0.0.1', dbname: 'recipes_directory_test' })
        connection.exec(seed_sql)
    end
    
    
      before(:each) do 
        reset_recipes_table
      end

    it 'lists all recipes' do
        repo = RecipeRepository.new
        list = repo.all
        expect(list.first.id).to eq ("1") 
        expect(list.first.recipe_names).to eq ("Carbonara") 
        expect(list.first.cooking_time).to eq ("15 minutes") 
        expect(list.first.recipe_rating).to eq ("10") 
    end

    it 'lists a single album' do
        repo = RecipeRepository.new
        expect(repo.find(1)).to eq 'Carbonara 15 minutes 10'
    end

end
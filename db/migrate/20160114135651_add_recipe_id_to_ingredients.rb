class AddRecipeIdToIngredients < ActiveRecord::Migration[7.1]
  def change
    add_column :ingredients, :recipe_id, :integer
  end
end

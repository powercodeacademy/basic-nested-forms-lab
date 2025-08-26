class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    2.times { @recipe.ingredients.build }
  end

  def create
    @recipe = Recipe.create(recipe_params)
    redirect_to @recipe
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, ingredients_attributes: [
      :name,
      :quantity
    ])
  end
end

# {
#   :recipe => {
#     :title => "Chocolate Cake",
#     :ingredients_attributes => {
#       "0" => {
#         :name => "sugar",
#         :quantity => "1 cup"
#       },
#       "1" => {
#         :name => "vanilla",
#         :quantity => "1 tablespoon"
#       }
#     }
#   }
# }

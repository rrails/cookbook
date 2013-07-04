class RecipesController < ApplicationController
  # shows the all the recipes

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def create
    # we have now created a recipe which is not going to be shown anywhere.
    # we have filled the form. the stuff from the form is in the params field.
    # we save it in the field called recipe. this is used by redirect so that it can be seen on
    # the screen to confirm this is created. The record is in the database.

    recipe = Recipe.create(params[:recipe])
    redirect_to(recipe)
  end

  def new
    @recipe = Recipe.new
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    recipe = Recipe.find(params[:id])
    recipe.update_attributes(params[:recipe])
    redirect_to(recipe)
  end

  def destroy
    recipe = Recipe.find(params[:id])
    recipe.destroy
    redirect_to(recipes_path)
  end

end
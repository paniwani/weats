class ShoppingListIngredientsController < ApplicationController
  # GET /shopping_list_ingredients
  # GET /shopping_list_ingredients.json
  def index
    @shopping_list_ingredients = ShoppingListIngredient.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shopping_list_ingredients }
    end
  end

  # GET /shopping_list_ingredients/1
  # GET /shopping_list_ingredients/1.json
  def show
    @shopping_list_ingredient = ShoppingListIngredient.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @shopping_list_ingredient }
    end
  end

  # GET /shopping_list_ingredients/new
  # GET /shopping_list_ingredients/new.json
  def new
    @shopping_list_ingredient = ShoppingListIngredient.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @shopping_list_ingredient }
    end
  end

  # GET /shopping_list_ingredients/1/edit
  def edit
    @shopping_list_ingredient = ShoppingListIngredient.find(params[:id])
  end

  # POST /shopping_list_ingredients
  # POST /shopping_list_ingredients.json
  def create
    @shopping_list_ingredient = ShoppingListIngredient.new(params[:shopping_list_ingredient])

    respond_to do |format|
      if @shopping_list_ingredient.save
        format.html { redirect_to @shopping_list_ingredient, notice: 'Shopping list ingredient was successfully created.' }
        format.json { render json: @shopping_list_ingredient, status: :created, location: @shopping_list_ingredient }
      else
        format.html { render action: "new" }
        format.json { render json: @shopping_list_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /shopping_list_ingredients/1
  # PUT /shopping_list_ingredients/1.json
  def update
    @shopping_list_ingredient = ShoppingListIngredient.find(params[:id])

    respond_to do |format|
      if @shopping_list_ingredient.update_attributes(params[:shopping_list_ingredient])
        format.html { redirect_to @shopping_list_ingredient, notice: 'Shopping list ingredient was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @shopping_list_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shopping_list_ingredients/1
  # DELETE /shopping_list_ingredients/1.json
  def destroy
    @shopping_list_ingredient = ShoppingListIngredient.find(params[:id])
    @shopping_list_ingredient.destroy

    respond_to do |format|
      format.html { redirect_to shopping_list_ingredients_url }
      format.json { head :ok }
    end
  end
end

class MealQueuesController < ApplicationController
  # GET /meal_queues
  # GET /meal_queues.json
  def index
    @meal_queues = MealQueue.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @meal_queues }
    end
  end

  # GET /meal_queues/1
  # GET /meal_queues/1.json
  def show
    @meal_queue = MealQueue.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @meal_queue }
    end
  end

  # GET /meal_queues/new
  # GET /meal_queues/new.json
  def new
    @meal_queue = MealQueue.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @meal_queue }
    end
  end

  # GET /meal_queues/1/edit
  def edit
    @meal_queue = MealQueue.find(params[:id])
  end

  # POST /meal_queues
  # POST /meal_queues.json
  def create
    @meal_queue = MealQueue.new(params[:meal_queue])

    respond_to do |format|
      if @meal_queue.save
        format.html { redirect_to @meal_queue, notice: 'Meal queue was successfully created.' }
        format.json { render json: @meal_queue, status: :created, location: @meal_queue }
      else
        format.html { render action: "new" }
        format.json { render json: @meal_queue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /meal_queues/1
  # PUT /meal_queues/1.json
  def update
    @meal_queue = MealQueue.find(params[:id])

    respond_to do |format|
      if @meal_queue.update_attributes(params[:meal_queue])
        format.html { redirect_to @meal_queue, notice: 'Meal queue was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @meal_queue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meal_queues/1
  # DELETE /meal_queues/1.json
  def destroy
    @meal_queue = MealQueue.find(params[:id])
    @meal_queue.destroy

    respond_to do |format|
      format.html { redirect_to meal_queues_url }
      format.json { head :ok }
    end
  end
end

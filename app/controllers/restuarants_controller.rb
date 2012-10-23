class RestuarantsController < ApplicationController
  # GET /restuarants
  # GET /restuarants.json

    before_filter :authorize, only: [:index, :edit, :update, :show, :destroy]

  def index
    @restuarants = Restuarant.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @restuarants }
    end
  end

  # GET /restuarants/1
  # GET /restuarants/1.json
  def show
    @restuarant = Restuarant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @restuarant }
    end
  end

  # GET /restuarants/new
  # GET /restuarants/new.json
  def new
    @restuarant = Restuarant.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @restuarant }
    end
  end

  # GET /restuarants/1/edit
  def edit
    @restuarant = Restuarant.find(params[:id])
  end

  # POST /restuarants
  # POST /restuarants.json
  def create
    @restuarant = Restuarant.new(params[:restuarant])

    respond_to do |format|
      if @restuarant.save
        format.html { redirect_to resthanks_path, notice: 'Restuarant Registered' }
        format.json { render json: @restuarant, status: :created, location: @restuarant }
      else
        format.html { render action: "new" }
        format.json { render json: @restuarant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /restuarants/1
  # PUT /restuarants/1.json
  def update
    @restuarant = Restuarant.find(params[:id])

    respond_to do |format|
      if @restuarant.update_attributes(params[:restuarant])
        format.html { redirect_to @restuarant, notice: 'Restuarant was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @restuarant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restuarants/1
  # DELETE /restuarants/1.json
  def destroy
    @restuarant = Restuarant.find(params[:id])
    @restuarant.destroy

    respond_to do |format|
      format.html { redirect_to restuarants_url }
      format.json { head :no_content }
    end
  end
end

class PtosController < ApplicationController
  # GET /ptos
  # GET /ptos.json
    before_filter :authorize, only: [:index, :edit, :update, :show, :destroy]
  

  def index
    @ptos = Pto.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ptos }
    end
  end

  # GET /ptos/1
  # GET /ptos/1.json
  def show
    @pto = Pto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pto }
    end
  end

  # GET /ptos/new
  # GET /ptos/new.json
  def new
    @pto = Pto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pto }
    end
  end

  # GET /ptos/1/edit
  def edit
    @pto = Pto.find(params[:id])
  end

  # POST /ptos
  # POST /ptos.json
  def create
    @pto = Pto.new(params[:pto])

    respond_to do |format|
      if @pto.save
        format.html { redirect_to thankyou_path, notice: 'Pto was successfully created.' }
        format.json { render json: @pto, status: :created, location: @pto }
      else
        format.html { render action: "new" }
        format.json { render json: @pto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ptos/1
  # PUT /ptos/1.json
  def update
    @pto = Pto.find(params[:id])

    respond_to do |format|
      if @pto.update_attributes(params[:pto])
        format.html { redirect_to @pto, notice: 'Pto was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ptos/1
  # DELETE /ptos/1.json
  def destroy
    @pto = Pto.find(params[:id])
    @pto.destroy

    respond_to do |format|
      format.html { redirect_to ptos_url }
      format.json { head :no_content }
    end
  end
end

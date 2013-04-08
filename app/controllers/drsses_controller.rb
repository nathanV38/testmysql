class DrssesController < ApplicationController
  # GET /drsses
  # GET /drsses.json
  def index
    @drsses = Drss.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @drsses }
    end
  end

  # GET /drsses/1
  # GET /drsses/1.json
  def show
    @drss = Drss.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @drss }
    end
  end

  # GET /drsses/new
  # GET /drsses/new.json
  def new
    @drss = Drss.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @drss }
    end
  end

  # GET /drsses/1/edit
  def edit
    @drss = Drss.find(params[:id])
  end

  # POST /drsses
  # POST /drsses.json
  def create
    @drss = Drss.new(params[:drss])

    respond_to do |format|
      if @drss.save
        format.html { redirect_to @drss, notice: 'Drss was successfully created.' }
        format.json { render json: @drss, status: :created, location: @drss }
      else
        format.html { render action: "new" }
        format.json { render json: @drss.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /drsses/1
  # PUT /drsses/1.json
  def update
    @drss = Drss.find(params[:id])

    respond_to do |format|
      if @drss.update_attributes(params[:drss])
        format.html { redirect_to @drss, notice: 'Drss was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @drss.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drsses/1
  # DELETE /drsses/1.json
  def destroy
    @drss = Drss.find(params[:id])
    @drss.destroy

    respond_to do |format|
      format.html { redirect_to drsses_url }
      format.json { head :no_content }
    end
  end
end

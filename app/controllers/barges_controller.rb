class BargesController < ApplicationController
  # GET /barges
  # GET /barges.json
  def index
    @barges = Barge.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @barges }
    end
  end

  # GET /barges/1
  # GET /barges/1.json
  def show
    @barge = Barge.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @barge }
    end
  end

  # GET /barges/new
  # GET /barges/new.json
  def new
    @barge = Barge.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @barge }
    end
  end

  # GET /barges/1/edit
  def edit
    @barge = Barge.find(params[:id])
  end

  # POST /barges
  # POST /barges.json
  def create
    @barge = Barge.new(params[:barge])

    respond_to do |format|
      if @barge.save
        format.html { redirect_to @barge, notice: 'Barge was successfully created.' }
        format.json { render json: @barge, status: :created, location: @barge }
      else
        format.html { render action: "new" }
        format.json { render json: @barge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /barges/1
  # PUT /barges/1.json
  def update
    @barge = Barge.find(params[:id])

    respond_to do |format|
      if @barge.update_attributes(params[:barge])
        format.html { redirect_to @barge, notice: 'Barge was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @barge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /barges/1
  # DELETE /barges/1.json
  def destroy
    @barge = Barge.find(params[:id])
    @barge.destroy

    respond_to do |format|
      format.html { redirect_to barges_url }
      format.json { head :no_content }
    end
  end
end

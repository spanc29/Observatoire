class PrixesController < ApplicationController
  # GET /prixes
  # GET /prixes.json
  def index
    @prixes = Prix.order("updated_at DESC").limit(10)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @prixes }
    end
  end

  # GET /prixes/1
  # GET /prixes/1.json
  def show
    @prix = Prix.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @prix }
    end
  end

  # GET /prixes/new
  # GET /prixes/new.json
  def new
    @prix = Prix.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @prix }
    end
  end

  # GET /prixes/1/edit
  def edit
    @prix = Prix.find(params[:id])
  end

  # POST /prixes
  # POST /prixes.json
  def create
    @prix = Prix.new(params[:prix])

    respond_to do |format|
      if @prix.save
        format.html { redirect_to @prix, notice: 'Prix was successfully created.' }
        format.json { render json: @prix, status: :created, location: @prix }
      else
        format.html { render action: "new" }
        format.json { render json: @prix.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /prixes/1
  # PUT /prixes/1.json
  def update
    @prix = Prix.find(params[:id])

    respond_to do |format|
      if @prix.update_attributes(params[:prix])
        format.html { redirect_to @prix, notice: 'Prix was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @prix.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prixes/1
  # DELETE /prixes/1.json
  def destroy
    @prix = Prix.find(params[:id])
    @prix.destroy

    respond_to do |format|
      format.html { redirect_to prixes_url }
      format.json { head :ok }
    end
  end
end

class ListesController < ApplicationController
  # GET /listes
  # GET /listes.json
  def index
    @listes = Liste.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @listes }
    end
  end

  # GET /listes/1
  # GET /listes/1.json
  def show
    @liste = Liste.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @liste }
    end
  end

  # GET /listes/new
  # GET /listes/new.json
  def new
    @liste = Liste.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @liste }
    end
  end

  # GET /listes/1/edit
  def edit
    @liste = Liste.find(params[:id])
  end

  # POST /listes
  # POST /listes.json
  def create
    @liste = Liste.new(params[:liste])

    respond_to do |format|
      if @liste.save
        format.html { redirect_to @liste, notice: 'Liste was successfully created.' }
        format.json { render json: @liste, status: :created, location: @liste }
      else
        format.html { render action: "new" }
        format.json { render json: @liste.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /listes/1
  # PUT /listes/1.json
  def update
    @liste = Liste.find(params[:id])

    respond_to do |format|
      if @liste.update_attributes(params[:liste])
        format.html { redirect_to @liste, notice: 'Liste was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @liste.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listes/1
  # DELETE /listes/1.json
  def destroy
    @liste = Liste.find(params[:id])
    @liste.destroy

    respond_to do |format|
      format.html { redirect_to listes_url }
      format.json { head :ok }
    end
  end
end

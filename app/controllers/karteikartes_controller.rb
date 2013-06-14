class KarteikartesController < ApplicationController
  # GET /karteikartes
  # GET /karteikartes.json
  def index
    @karteikartes = Karteikarte.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @karteikartes }
    end
  end

  # GET /karteikartes/1
  # GET /karteikartes/1.json
  def show
    @karteikarte = Karteikarte.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @karteikarte }
    end
  end

  # GET /karteikartes/new
  # GET /karteikartes/new.json
  def new
    @karteikarte = Karteikarte.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @karteikarte }
    end
  end

  # GET /karteikartes/1/edit
  def edit
    @karteikarte = Karteikarte.find(params[:id])
  end

  # POST /karteikartes
  # POST /karteikartes.json
  def create
    @karteikarte = Karteikarte.new(params[:karteikarte])

    respond_to do |format|
      if @karteikarte.save
        format.html { redirect_to @karteikarte, notice: 'Karteikarte was successfully created.' }
        format.json { render json: @karteikarte, status: :created, location: @karteikarte }
      else
        format.html { render action: "new" }
        format.json { render json: @karteikarte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /karteikartes/1
  # PUT /karteikartes/1.json
  def update
    @karteikarte = Karteikarte.find(params[:id])

    respond_to do |format|
      if @karteikarte.update_attributes(params[:karteikarte])
        format.html { redirect_to @karteikarte, notice: 'Karteikarte was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @karteikarte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /karteikartes/1
  # DELETE /karteikartes/1.json
  def destroy
    @karteikarte = Karteikarte.find(params[:id])
    @karteikarte.destroy

    respond_to do |format|
      format.html { redirect_to karteikartes_url }
      format.json { head :no_content }
    end
  end
end

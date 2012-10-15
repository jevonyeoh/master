class NewusersController < ApplicationController
  # GET /newusers
  # GET /newusers.json
  def index
    @newusers = Newuser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @newusers }
    end
  end

  # GET /newusers/1
  # GET /newusers/1.json
  def show
    @newuser = Newuser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @newuser }
    end
  end

  # GET /newusers/new
  # GET /newusers/new.json
  def new
    @newuser = Newuser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @newuser }
    end
  end

  # GET /newusers/1/edit
  def edit
    @newuser = Newuser.find(params[:id])
  end

  # POST /newusers
  # POST /newusers.json
  def create
    @newuser = Newuser.new(params[:newuser])

    respond_to do |format|
      if @newuser.save
        format.html { redirect_to @newuser, notice: 'Newuser was successfully created.' }
        format.json { render json: @newuser, status: :created, location: @newuser }
      else
        format.html { render action: "new" }
        format.json { render json: @newuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /newusers/1
  # PUT /newusers/1.json
  def update
    @newuser = Newuser.find(params[:id])

    respond_to do |format|
      if @newuser.update_attributes(params[:newuser])
        format.html { redirect_to @newuser, notice: 'Newuser was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @newuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newusers/1
  # DELETE /newusers/1.json
  def destroy
    @newuser = Newuser.find(params[:id])
    @newuser.destroy

    respond_to do |format|
      format.html { redirect_to newusers_url }
      format.json { head :no_content }
    end
  end
end

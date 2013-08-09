class UsersController < ApplicationController
  # GET /users
  # GET /users.json
  def index
    @users = User.page params[:page]
    # respond_to do |format|
    #   format.html # index.html.erb
    #   format.json { render json: @users }
    # end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new
<<<<<<< HEAD
    # because we said remote true on index.html
=======
    # because we said remote: true in index.html
>>>>>>> 8d656bc421221b97bd229413d1a4051dbfff4b0b
    # next up is views/users/new.js.erb
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    user = User.create(params[:user])
    @users = User.all
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end
end

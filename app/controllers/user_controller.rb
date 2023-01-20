class UserController < ApplicationController
  def index
    Rails.logger.info "INSIDE USER INDEX CONTROLLER ------------------------"
    @users = User.all
    render :resellerPortal

    # respond_to do |format|
    #   format.html # index.html.erb
    #   format.xml  { render xml: @users }
    #   format.json { render json: @users }
    # end
  end
  
  def show
    @user= User.find(params[:id])
  end

  def new 
    @user = User.new  
    Rails.logger.info "NEW METHOD WAS CALLED!......................."
    if params[:first_name].blank?
      Rails.logger.info "METHOD WAS BLANK......................"
      render :new 
    else 
      Rails.logger.info "METHOD WAS NOT BLANK!......................."
      redirect_to users_path
      
    end  
  end

  def create
    Rails.logger.info "CREATE METHOD WAS CALLED!......................."
    redirect_to users_path
  end

  private

  def versions_params
    params.permit(:page, :page_limit)
  end

  def search_params
    params.permit(:first_name, :last_name, :email) 
  end


end

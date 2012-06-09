class RequestsController < ApplicationController

  def new
    @request = Request.new
    @departments = Department.all
  end
  
  def create
    if !(@user = User.find_by_email(params[:"user[email]"]))
      @user = User.create(params[:user])
    end
    
    @request = @user.requests.build(params[:request])
    
    if @request.save
      redirect_to root_path
    end
    
  end

end

class RequestsController < ApplicationController

  def new
    @request = Request.new
    @departments = Department.all
  end
  
  def create
    if !(@requester = Requester.find_by_email(params[:"requester[email]"]))
      @requester = Requester.create(params[:requester])
    end
    
    @request = @requester.requests.build(params[:request])
  
    if @requester.save && @request.save
      redirect_to root_path
    end
  end

end

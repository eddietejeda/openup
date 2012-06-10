class RequestsController < ApplicationController
  
  def index
    @requests = Request.all
  end
  
  def show
    @request = Request.find(params[:id])
  end

  def new
    @request = Request.new
    @departments = Department.all
  end
  
  def create
    
    @requester = Requester.find_by_email(params[:"requester[email]"])
    
    if !@requester
      @requester = Requester.create(params[:requester])
      redirect_to root_path unless @requester.save
    end
    
    @request = @requester.requests.build(params[:request])
  
    if @requester.save && @request.save
      RequestMailer.request_sent_email(@request).deliver
      redirect_to root_path
    end
  end

end

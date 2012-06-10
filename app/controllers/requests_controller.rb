class RequestsController < ApplicationController
  
  respond_to :html, :json, :xml

  def index

    unless params[:status].nil?
      @requests = Response.joins(:request)
    else
      @requests = Request.all
    end



    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @requests.to_json }
    end
  end
  
  def show
    @request = Request.find(params[:id])
    @responses = @request.responses.all
  end

  def new
    @request = Request.new
    @departments = Department.all
  end
  
  def create
    
    @requester = Requester.find_by_email(params[:requester]["email"])
    
    if !@requester
      @requester = Requester.create(params[:requester])
      redirect_to root_path unless @requester.save
    end
    
    @request = @requester.requests.build(params[:request])
  
    if @requester.save && @request.save
      RequestMailer.request_sent_email(@request).deliver
      redirect_to request_path(@request)
    end
  end

end

class ResponsesController < ApplicationController

  before_filter :check_response_key

  def new
    @response = @request.responses.build
  end
  
  def create
    @response = @request.responses.build(params[:response])
    
    if @response.save
      redirect_to root_path
    end
  end
  
  private
  
  def check_response_key
    @request = Request.find(params[:request_id])
    redirect_to root_path unless params[:response_key] == @request.response_key
  end

end

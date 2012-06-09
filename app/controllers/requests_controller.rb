class RequestsController < ApplicationController

  def new
    @request = Request.new
    @departments = Department.all
  end

end

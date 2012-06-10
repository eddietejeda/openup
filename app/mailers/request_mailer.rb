class RequestMailer < ActionMailer::Base
  default from: "contact@openupnyc.com"
  
  def request_sent_email(request)
    @request = request
    mail(to: @request.department.email, subject: "New FOI Request from OpenUp NYC")
  end
  
  def response_sent_email(response)
    @response = response
    mail(to: @response.request.requester.email, subject: "New Response from #{@response.request.department.name} on OpenUp NYC")
  end
  
end

class RequestMailer < ActionMailer::Base
  default from: "contact@openupnyc.com"
  
  def request_sent_email(request)
    @request = request
    @response_url = "http://www.google.com"
    mail(to: @request.department.email, subject: "New FOI Request from OpenUp NYC")
  end
end

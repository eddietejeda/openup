class Notifier < ActionMailer::Base
#  default from: "from@example.com"
  default :from => 'contact@openupnyc.com'


def welcome(recipient)
    @account = recipient
    mail(:to => recipient.email,
         :bcc => ["bcc@example.com", "Order Watcher <watcher@example.com>"])
  end

end

require 'mailgun'
class Emailmachine

  def initialize(email)
    @email = email
  end

  # Initialize your Mailgun object:
  Mailgun.configure do |config|
    config.api_key = 'key-c94b8a6d1fd2522cb1f888aa4347693e'
    config.domain  = 'sandboxa494c5941ef54e1eab73f0dfcfba334c.mailgun.org'
  end

  def send_email
    @mailgun = Mailgun()
    parameters = {
      :to => @email,
      :subject => "missing tps reports",
      :text => "yeah, we're gonna need you to come in on friday...yeah.",
      :from => "postmaster@sandboxa494c5941ef54e1eab73f0dfcfba334c.mailgun.org"
    }
  


    @mailgun.messages.send_email(parameters)
  end
end

hi = Emailmachine.new("darkpwnzerz@gmail.com")
hi.send_myemail
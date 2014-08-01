require 'rubygems' # not necessary with ruby 1.9 but included for completeness
require 'twilio-ruby'

class Yolo
  def initialize(number)
    @number = number
  end

  # put your own credentials here

  def call
    account_sid = 'ACe330ba04d082392df4cb3511dcb72cec'
    auth_token = '2008ea097713e401a16c54029058da82'

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new account_sid, auth_token

      @client.account.messages.create(
        :from => '+18152642023',
        :to => @number,
        :body => 'hahahayolo'
      )
  end


end

hi = Yolo.new(+13475757194)
hi.call

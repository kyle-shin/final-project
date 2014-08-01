require 'nokogiri'
require 'pry'
# require 'rubygems' # not necessary with ruby 1.9 but included for completeness
require 'twilio-ruby'
require 'open-uri'

class Scrapper
  def scrape
    html = open('http://www.pickuplinesgalore.com/cheesy.html')
    cp = Nokogiri::HTML(html)

    projects = []

    cp.css('.style25').each do |item|
      projects.push(item.text)
    end
    result = projects.sample
  end
end

class Texter

  # put your own credentials here

  def call(number, message)
    account_sid = 'ACe330ba04d082392df4cb3511dcb72cec'
    auth_token = '2008ea097713e401a16c54029058da82'

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new account_sid, auth_token

      @client.account.messages.create(
        :from => '+18152642023',
        :to => number,
        :body => message
      )
  end
end






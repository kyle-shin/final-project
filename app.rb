require 'bundler' #require bundler
Bundler.require #require everything in bundler in gemfile
require './lib/THEPROJECT'


get '/' do
  erb :index # This tells your program to use the html associated with the index.erb file in your browser.
end

post '/' do
  number = params[:number]
  if number != nil
    hi = Scrapper.new
    lol = Texter.new
    lol.call(number, hi.scrape)
  end
  erb :index # This tells your program to use the html associated with the index.erb file in your browser.
end
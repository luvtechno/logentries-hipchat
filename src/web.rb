require 'sinatra'

get '/' do
  puts "Hello World!"
  "Hello World!"
end

post '/alert' do
  payload = JSON.parse(params[:payload])
  puts payload
end

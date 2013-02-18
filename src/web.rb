require 'sinatra'

api_token = ENV['HIPCHAT_TOKEN']
client = HipChat::Client.new(api_token)
room_id = ENV['HIPCHAT_ROOM_ID']

get '/' do
  puts "Hello World!"
  client[room_id].send('Logentries', 'Hello!')
  "Hello World!"
end

post '/alert' do
  payload = JSON.parse(params[:payload])
  puts payload
end

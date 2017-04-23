require 'json'
require_relative './../models/greet'

class GreetingController
  def index
    {
      greet: 'Hi there!'
    }.to_json
  end

  def create(request)
    body = JSON.parse request.body.read

    Greet.create!({
      sender: body['sender'],
      receiver: body['receiver']
      })
  end
end

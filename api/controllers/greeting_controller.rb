require 'json'
require_relative './../models/greet'

class GreetingController
  def index
    {
      greet: 'Hi there!'
    }.to_json
  end

  def create
    Greet.create!({
      sender: 'Jovanny',
      receiver: 'Pablo'
      })
  end
end

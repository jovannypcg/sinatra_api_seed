require 'json'

class GreetingController
  def index
    {
      greet: 'Hi there!'
    }.to_json
  end
end

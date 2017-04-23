require 'sinatra/base'
require_relative './../controllers/greeting_controller'

module Sinatra
  module Routing
    module Greetings
      def self.registered(app)
        greeting_controller = GreetingController.new

        show_greeting = -> { greeting_controller.index }
        create_greeting = -> { greeting_controller.create }

        app.get '/greets', &show_greeting
        app.post '/greets', &create_greeting
      end
    end
  end

  register Routing::Greetings
end

require 'sinatra/base'
require_relative './../controllers/greeting_controller'

module Sinatra
  module Routing
    module Greetings
      def self.registered(app)
        greeting_controller = GreetingController.new

        show_greeting = -> { greeting_controller.index }

        app.get '/greet', &show_greeting
      end
    end
  end

  register Routing::Greetings
end

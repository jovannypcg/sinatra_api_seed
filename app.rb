require 'sinatra/base'
require 'sinatra/config_file'

Dir[File.dirname(__FILE__) + '/api/routes/*.rb'].each {|file| require file }

class Seed < Sinatra::Base
  set :environment, :development

  register Sinatra::ConfigFile
  config_file './api/config.yml'

  before do
    content_type :json
  end

  register Sinatra::Routing::Greetings

  run!
end

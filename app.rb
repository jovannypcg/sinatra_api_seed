require 'sinatra/base'
require 'sinatra/config_file'
require 'mongoid'

Dir[File.dirname(__FILE__) + '/api/routes/*.rb'].each {|file| require file }
Mongoid.load!(File.join(File.dirname(__FILE__), 'config', 'mongoid.yml'))

class Seed < Sinatra::Base
  set :environment, :development

  register Sinatra::ConfigFile
  config_file './config/seed.yml'

  before do
    content_type :json
  end

  register Sinatra::Routing::Greetings

  run!
end

require 'mongoid'

=begin
Represents a Greet in Mongo
=end
class Greet
  include Mongoid::Document

  field :sender, type: String
  field :receiver, type: String
end

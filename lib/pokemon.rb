require 'pry'

class Pokemon
  attr_accessor :name, :type, :db

  def initialize(id, name:, type:, db:)
    @name = name
    @type = type
    @db = db
  end

  def self.save
    
  end


end

require 'pry'

class Pokemon
  attr_accessor :name, :type, :db, :id

  def initialize(id:, name:, type:, db:, hp: nil)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save

  end


end

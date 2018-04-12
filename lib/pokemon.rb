require 'pry'

class Pokemon
  attr_accessor :name, :type, :db, :id, :hp
  @@all = []

  def initialize(id:, name:, type:, db:, hp: nil)
    @id = id
    @name = name
    @type = type
    @db = db
    @hp = hp
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end

  def self.find(id)
    poke = db.execute("SELECT * FROM pokemon WHERE pokemon.id = ?", id)
    Pokemon.new(id: poke[0], name: poke[1], type: poke[2], db: db, hp: poke[3])
  end


end

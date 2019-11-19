class Pokemon
  
  attr_accessor :id, :name, :type, :db
  
  def initialize(id: nil, name:, type:, db:)
    @name = name
    @type = type
    @db = db
    @id = id
  end
  
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?);", name, type)
  end
  
  def self.find(id, db)
    x = db.execute("SELECT * FROM pokemon WHERE id = ?", id).flatten
    Pokemon.new = 
  end
  
end

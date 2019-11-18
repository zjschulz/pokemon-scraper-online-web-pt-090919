class Pokemon
  
  attr_accessor :id, :name, :type, :db
  
  def initialize(id: nil, name:, type:, db:)
    @name = name
    @type = type
    @db = db
    @id = id
  end
  
  def self.save(name, type, db)
    if self.id
      self.update
    else
      sql = <<-SQL
        INSERT INTO pokemon (name, type, db)
        VALUES (?, ?)
      SQL
      DB[:conn].execute(sql, self.name, self.album, self.db)
      @id = DB[:conn].execute("SELECT last_insert_rowid() FROM pokemon")[0][0]
    end
  end
  
  def update
    sql = "UPDATE pokemon SET name = ?, type = ? WHERE id = ?"
    DB[:conn].execute(sql, self.name, self.type, self.id)
  end
  
end

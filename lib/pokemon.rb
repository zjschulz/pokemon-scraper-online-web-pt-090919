class Pokemon
  
  attr_accessor :name, :type, :db
  attr_reader :id
  
  def initialize(id: nil, name:, type:, db:)
    @name = name
    @type = type
    @db = db
    @id = id
  end
  
  def self.save(id, name, type)
    if self.id
      self.update
    else
      sql = <<-SQL
        INSERT INTO pokemon (name, type)
        VALUES (?, ?)
      SQL
      DB[:conn].execute(sql, self.name, self.type)
      @id = DB[:conn].execute("SELECT last_insert_rowid() FROM pokemon")[0][0]
    end
  end
  
  def update
    sql = "UPDATE pokemon SET name = ?, type = ? WHERE id = ?"
    DB[:conn].execute(sql, self.name, self.type, self.id)
  end
  
end

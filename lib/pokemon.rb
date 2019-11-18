class Pokemon
  
  attr_accessor :id, :name, :type, :db
  
  def initialize(id: nil, name:, type:, db:)
    @name = name
    @type = type
    @db = db
    @id = id
  end
  
  def update
    sql = "UPDATE songs SET name = ?, album = ? WHERE name = ?"
    DB[:conn].execute(sql, self.name, self.album, self.name)
  end
  
end

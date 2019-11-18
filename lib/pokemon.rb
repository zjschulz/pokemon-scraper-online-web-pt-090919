class Pokemon
  
  attr_accessor :name, :type
  attr_reader :id
  
  def initialize(id: nil, name:, type:)
    @name = name
    @type = type
    @id = id
  end
  
  def save
    sql = <<-SQL
      INSERT INTO pokemon (name, type)
      VALUES (?, ?)
    SQL
 
    DB[:conn].execute(sql, self.name, self.type)
    @id = DB[:conn].execute("SELECT last_insert_rowid() FROM songs")[0][0]
  end
  
end

class Pokemon
  
  attr_accessor :id, :name, :type, :db
  
  def initialize(id = nil, name, type, db)
    @name = name
    @type = type
    @db = db
    @id = id
  end
  
end

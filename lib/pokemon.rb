class Pokemon
  
  attr_accessor :id, :name, :type
  
  def initialize(id = nil, name, type)
    @name = name
    @type = type
    @db = db
    @id = id
  end
  
end

class Pokemon
  
  attr_accessor :id, :name, :type
  
  def initialize(id = nil, name, type)
    @name = name
    @type = type
    @id = id
  end
  
end

class Pokemon
  
  attr_accessor :name, :type
  attr_reader :id
  
  def initialize(id = nil, name, type)
    @name = name
    @type = type
    @id = id
  end
  
end

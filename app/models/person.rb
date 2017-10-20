class Person
  include Neo4j::ActiveNode
  property :name, type: String
  has_many :out, :Technology , type: :KNOWS
end
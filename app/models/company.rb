class Company
  include Neo4j::ActiveNode
  property :name, type: String
  has_many :in, :Department, origin: :Company
end

class Department
  include Neo4j::ActiveNode
  property :name, type: String
  has_one :out, :Company, type: :dept_belongs_to_company
  has_many :in, :Category, origin: :Department
end
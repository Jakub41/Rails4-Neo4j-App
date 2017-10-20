class Technology
  include Neo4j::ActiveNode
  property :name, type: String
  has_one :out, :Category , type: :tech_belongs_to_category
  has_many :in ,:Person , type: :KNOWS
end
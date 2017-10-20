class Category
  include Neo4j::ActiveNode
  property :name, type: String
  has_one :out, :Department , type: :category_belongs_to_dept
  has_many :in , :Technology , type: :tech_belongs_to_category

end

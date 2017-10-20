class CreateCompany < Neo4j::Migrations::Base
  def up
    add_constraint :Company, :uuid
  end

  def down
    drop_constraint :Company, :uuid
  end
end

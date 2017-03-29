require_relative('../db/runner')

class House

  attr_reader :id, :name, :url

  def initialize(options)
    @id= options["id"].to_i,
    @name= options["name"],
    @url= options["url"]
  end

  def save()
    sql= "INSERT INTO houses(
    name, url) VALUES ( '#{name}', '#{url}') RETURNING *;"
    house = SqlRunner.run(sql)
    @id = house.first()['id'].to_i 
  end
end
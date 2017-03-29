require_relative('../db/runner')

class House

  attr_reader :id, :name, :url

  def initialize(options)
    @id= options["id"].to_i
    @name= options["name"]
    @url= options["url"]
  end

  def save()
    sql= "INSERT INTO houses(
    name, url) VALUES ( '#{name}', '#{url}') RETURNING *;"
    house = SqlRunner.run(sql)
    @id = house.first()['id'].to_i 
  end

  def self.all()
    sql = "SELECT * FROM houses"
    return House.map_items(sql)
  end

  def self.find( id )
    sql = "SELECT * FROM houses WHERE id=#{id};"
    house = SqlRunner.run( sql )
    result = House.new( house.first )

    return result
  end

  def self.map_items(sql)
    houses = SqlRunner.run(sql)
    result = houses.map { |house| House.new(house)}
    return result
  end
end
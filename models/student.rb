require_relative('../db/runner')

class Student

  attr_reader :id, :first_name, :last_name, :house_id, :age

  def initialize(options)
    @id= options["id"].to_i,
    @first_name= options["first_name"],
    @last_name= options["last_name"],
    @house_id= options["house_id"].to_i,
    @age= options["age"].to_i
  end

  def save()
    sql= "INSERT INTO students(
    first_name, last_name, house_id, age) VALUES ( '#{first_name}', '#{last_name}', #{house_id}, #{age}) RETURNING *;"
    student = SqlRunner.run(sql)
    @id = student.first()['id'].to_i 
  end
end
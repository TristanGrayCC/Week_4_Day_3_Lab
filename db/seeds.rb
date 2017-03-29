require_relative('../models/student')
require_relative('../models/house')

@house1 = House.new({'name' => 'Gryffindor', 'url' => 'http://bit.ly/2aOp6RC'})
@house1.save

@student1 = Student.new({'first_name' => 'Harry', 'last_name' => 'Potter', 'house_id' => 1, 'age' => 11})
@student1.save
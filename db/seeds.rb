require_relative('../models/student')
require_relative('../models/house')

@house1 = House.new({'name' => 'Gryffindor', 'url' => 'http://bit.ly/2aOp6RC'})
@house2 = House.new({'name' => 'Hufflepuff', 'url' => 'http://bit.ly/2oy2iar'})
@house3 = House.new({'name' => 'Ravenclaw', 'url' => 'http://bit.ly/2o6WxUi'})
@house4 = House.new({'name' => 'Slytherin', 'url' => 'http://bit.ly/2oxNXdO'})
@house1.save
@house2.save
@house3.save
@house4.save

@student1 = Student.new({'first_name' => 'Harry', 'last_name' => 'Potter', 'house_id' => 1, 'age' => 11})
@student1.save
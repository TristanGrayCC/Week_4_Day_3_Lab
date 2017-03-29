require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( './models/house' )
require_relative( './models/student' )

  get '/students' do

  @students = Student.all()
  erb(:student_index)
  end

  get '/students/new' do
    erb(:new)
  end

  post '/students' do
    @student = Student.new(params)
    @student.save()
    erb(:create)
  end
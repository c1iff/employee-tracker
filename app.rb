require("sinatra")
require("sinatra/reloader")
require('sinatra/activerecord')
also_reload("lib/**/*.rb")
require("./lib/division")
require("./lib/employee")
require("pg")

get('/') do
  @employees = Employee.all()
  erb(:index)
end

get('/employee') do
  @employees = Employee.all()
  erb(:employee)
end

get('/divisions') do
  @divisions = Division.all()
  erb(:divisions)
end

post('/divisions') do
  division_name = params['division-name']
  Division.create({:name => division_name})
  @divisions = Division.all()
  erb(:divisions)
end

get('/divisions/:id') do
  @division = Division.find(params['id'])
  @employees = @division.employees
  erb(:division)
end

post('/divisions/:id') do
  @division = Division.find(params['id'])
  @employees = @division.employees
  employee_first = params['first-name']
  employee_last = params['last-name']
  @division.employees().create({:first_name => employee_first, :last_name => employee_last})
  erb(:division)
end

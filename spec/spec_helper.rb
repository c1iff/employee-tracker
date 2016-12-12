ENV['RACK_ENV'] = 'test'

require('sinatra/activerecord')
require("rspec")
require("pg")
require("division")
require("employee")
require('project')
require("pry")


RSpec.configure do |config|
  config.after(:each) do
    Division.all.each() do |each|
      each.destroy()
    end
    Employee.all.each() do |each|
      each.destroy()
    end
    Project.all.each() do |each|
      each.destroy()
    end
  end
end

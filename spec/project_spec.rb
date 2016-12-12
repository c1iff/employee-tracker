require('spec_helper')

describe(Project) do
  describe('.all') do
    it "It creates a project and assigns it to an employee" do
      test_employee = Employee.create({:first_name => "John", :last_name => "Smith"})
      test_project = test_employee.projects.create({:name => 'Peoples Helth', :description => "eat healthy food!"})
      expect(test_employee.projects()).to(eq([test_project]))
      expect(test_project.employee()).to(eq(test_employee))
    end
  end
end

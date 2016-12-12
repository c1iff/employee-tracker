require('spec_helper')

describe(Employee) do
  describe('.all') do
    it('creates new division and adds an emmployee') do
      test_division = Division.create({:name => 'Sales'})
      test_employee = test_division.employees().create({:first_name => "John", :last_name => "Smith"})
      expect(test_employee.division()).to(eq(test_division))
      expect(test_division.employees()).to(eq([test_employee]))
    end
  end
end

# file path: DSimons/WDI/01 13 2013/spec/employee_spec.rb

require 'employee'
require 'spec_helper'

describe Employee do

  before(:each) do
	  @employee = Employee.new("YourName")
	  @employee.title = "CEO"
	  @employee1 = Employee.new("Micky")
	  @employee1.title = "VP"
	end

  it "has a name" do
    @employee.name.should eq("YourName")

    # this syntax also works
    # employee.name.should == "YourName"
  end

  it "can change names" do
  	@employee.name = "Donald"
  	@employee.name.should == "Donald"
  end

  it "introduces itself" do
  	@employee.greeting.should == "Hello, my name is YourName and my title is CEO."
  end

  it "has a title" do
  	@employee.title.should == "CEO"
  end

  it "updates employee count" do
  	Employee.count.should == 2
  	# ".count" is a calling a class method called count.  That method in the class needs to be written as "self.count"
  end

  after(:each) do
  	Employee.resign
  	Employee.resign
  end


end
require "#{File.dirname(__FILE__)}/spec_helper.rb"

class TestChild < ActiveRecord::Base; methodise :test_parent => [:name]; end

describe TestChild do
  it 'should have an instance method called :test_parent_name' do
    TestChild.instance_methods.should include('test_parent_name')
  end
end

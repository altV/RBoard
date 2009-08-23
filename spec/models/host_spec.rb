require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Host do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :whois => "value for whois",
      :ip => "value for ip"
    }
  end

  it "should create a new instance given valid attributes" do
    Host.create!(@valid_attributes)
  end
end

require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Post do
  fixtures :posts

  before(:each) do
    @valid_attributes = {
      :header => "value for header"
    }
  end

  it "should create a new instance given valid attributes" do
    Post.create!(@valid_attributes)
  end

  it "should find root_post" do
    @root = Post.find_by_header("one")
    @child = Post.find_by_header("one-child")
    @root.root_post.header.should == @root.header
    @child.root_post.header.should == @root.header
  end
end

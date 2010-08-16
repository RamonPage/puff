require File.dirname(__FILE__) + '/../spec_helper'

describe Post do

  context "with invalid attribute" do
    before :each do
      @post = Post.new(:title => '', :body => '')
      @post.valid?
    end
    
    it "should have error on title" do
      @post.errors[:title].should_not be_nil
    end

    it "should have error on body" do
      @post.errors[:body].should_not be_nil
    end

  end

end


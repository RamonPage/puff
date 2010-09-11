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

  it "#formated_tags should return string of tags separated by comma" do
    tags = "one, two, three"
    post = Post.new(:tags => tags.split(','))
    post.formated_tags.should eql(tags)
  end

end


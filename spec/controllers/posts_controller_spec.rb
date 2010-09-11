require File.dirname(__FILE__) + '/../spec_helper'

describe PostsController do

  describe "route" do

    it "should recognise /posts to #index" do
      { :get => "/posts"}.should route_to(  :controller => 'posts',
                                              :action => 'index')
    end

  end

  describe "should handle GET to index" do

    it "should assign posts" do
      posts = double('post')
      Post.stub!(:all).and_return([posts])
      get :index
      assigns(:posts).should eq([posts])
    end

  end


end


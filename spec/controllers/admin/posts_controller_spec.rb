require File.dirname(__FILE__) + '/../../spec_helper'

describe Admin::PostsController do

  describe "route" do
    it "should recognise admin/posts/new to admin:posts#new" do
      { :get => "/admin/posts/new"}.should route_to(  :controller => 'admin/posts',
                                                :action => 'new')
    end

  end

  describe "should handle GET to new" do

    it "should assign a post" do
      post = double('post')
      Post.stub!(:new).and_return(post)
      get :new
      assigns(:post).should eq(post)
    end

  end

end


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

  describe "should handle POST to create" do

    context "with valid attributes" do

      it 'it redirects to index' do
        post :create, :post => { :title => "Título", :body  => "Corpo da Página", :tags => "tag1, tag dois" }
        response.should be_redirect
      end

    end

#    context "with invalid attributes" do

#      it 'it render new' do
#        post :create, :page => { :title => "", :body  => "" }
#        response.should render_template('new')
#      end

#    end

  end

end


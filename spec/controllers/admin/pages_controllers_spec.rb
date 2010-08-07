require File.dirname(__FILE__) + '/../../spec_helper'

describe Admin::PagesController do

  describe "route" do
    it "should recognise /new to #new" do
      { :get => "/admin/pages/new"}.should route_to(  :controller => 'admin/pages',
                                                :action => 'new')
    end

  end

  describe "should handle GET to new" do

    it "should assign a page" do
      page = double('page')
      Page.stub!(:new).and_return(page)
      get :new
      assigns(:page).should eq(page)
    end

  end

  describe "should handle POST to create" do

    context "with valid attributes" do

      pending
      it 'it redirects to show' do
        post :create, :page => { :title => "Título", :slug => "", :body  => "Corpo da Página" }
      end

    end

    context "with invalid attributes" do

      it 'it render new' do
        post :create, :page => { :title => "", :body  => "" }
        response.should render_template('new')
      end

    end

  end

end


require File.dirname(__FILE__) + '/../spec_helper'

describe PagesController do

  describe "route" do

    it "should recognise /:slug to #show" do
      { :get => "/my-page"}.should route_to(  :controller => 'pages',
                                              :action => 'show',
                                              :slug => "my-page")
    end

  end

  it "should handle a page" do
    page = double('page')
    Page.stub!(:find_by_slug).and_return(page)
    get :show, :slug => "my-page"
    assigns(:page).should eq(page)
  end

end


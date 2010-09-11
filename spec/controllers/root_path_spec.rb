require File.dirname(__FILE__) + '/../spec_helper'

describe "Root Path" do

  describe "route" do

    it "should recognise / to posts#index" do
      { :get => "/posts"}.should route_to(  :controller => 'posts', :action => 'index')
    end

  end

end


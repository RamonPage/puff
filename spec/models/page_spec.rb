require File.dirname(__FILE__) + '/../spec_helper'

describe Page do
  before :each do
    @page = Page.new(:title => "title", :body => "body body body")
  end
  context "with invalid attribute" do

    it "#title should have an error" do
      @page.title = nil
      @page.save
      @page.should have(1).error
    end

    it "#body should have an error" do
      @page.body = nil
      @page.save
      @page.should have(1).error
    end

  end
end


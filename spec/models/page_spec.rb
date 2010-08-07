require File.dirname(__FILE__) + '/../spec_helper'

describe Page do

  context "with invalid attribute" do
    before :each do
      @page = Page.new(:title => '', :slug => '', :body => '')
    end

    it "should have errors" do
      @page.save
      @page.should have(3).error
    end

    it "#slug with invalid characters like '!@%*&%¨' clean it" do
      @page.slug = '!@%*&%¨'
      @page.save
      @page.slug.should == ""
    end
  end

  context "with valid attribute" do
    before :each do
      @page = Page.new(:title => "título da página", :slug => "meu-slug", :body => "body body body")
    end
    it "without slug should slugfy title" do
      @page.slug = ''
      @page.save
      @page.slug.should == "t-tulo-da-p-gina"
    end


    it "with slug should slugfy himself" do
      @page.slug = "título da página com ão"
      @page.save
      @page.slug.should == "t-tulo-da-p-gina-com-o"
    end
  end

end


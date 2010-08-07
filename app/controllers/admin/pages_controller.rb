class Admin::PagesController < ApplicationController

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(params[:page])
    if @page.save
      redirect_to :action => 'show', :id => @page
    else
      render :action => 'new'
    end
  end

  def show
    @page = Page.find(params[:id])
  end

end


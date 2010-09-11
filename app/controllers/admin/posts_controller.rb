class Admin::PostsController < ApplicationController
  before_filter :tags_string_to_hash, :only => [:create]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])

    if @post.save
      redirect_to :action => 'index'
    else
      render :action => 'new'
    end
  end

  private

    # Convert tags String from new.erb view to Hash
    # It's necessary to property tag on Model Post, 'cause it's
    # a Hash of String
    #
    # Example:
    # get a string "tagone, tagtwo" and convert to ["tagone", " tagtwo"]
    #
    def tags_string_to_hash
      unless params[:post].nil?
        params[:post][:tags] = params[:post][:tags].split(',')
      end
    end

end


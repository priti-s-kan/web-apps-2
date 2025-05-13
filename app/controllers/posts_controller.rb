class PostsController < ApplicationController

  def index
    # find all Post rows
    @posts = Post.all
    # render posts/index view
  end

  def new
    # render view with new post form
  end

  def create
    # start with a new Post
    @post = Post.new
    # assign user-entered form data to post's columns
    @post["author"] = params["author"]
    @post["body"] = params["body"]
    @post["image"] = params["image"]
    # save row
    @post.save
    # redirect user
    redirect_to "/posts"  
  end

end

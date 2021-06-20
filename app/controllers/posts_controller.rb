class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @posts = Post.all
  end

  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.build(post_params)
    
    if @post.save
      redirect_to root_path, notice: "Post successful!"
    else
      render :new
    end
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end

end

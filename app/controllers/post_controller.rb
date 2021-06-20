class PostController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

def index
  @post = Post.all
end

def new
end

def create
end

end

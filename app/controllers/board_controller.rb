class BoardController < ApplicationController

  #layout "board_full", :except => [:new]
  layout "board_np"
  view_paths=('board/simple') # FIXME: doesn't work


  def index
    @posts = Post.find(:all, :order => "created_at DESC, header", :conditions => { :post_id => nil }, :limit => 100)
    render 'board/simple/index'
  end

  def show
    @post = Post.find(params[:id])
    @thread = @post.root_post
    @reply = Post.new
    @reply.post_id = @post.id
    render 'board/simple/show'
  end

  def new
    @post = Post.new(params[:post])
    render 'board/simple/new'
  end

  def create
    @post = Post.new(params[:post])
    @post.host = Host.find_or_create_by_ip(:ip => request.remote_ip)
    if @post.save
      redirect_to :action => :index
    else
      redirect_to :back
    end
    
  end

  def edit
    @post = Post.find(params[:id])
    render 'board/simple/edit'
  end

  def update
    @post = Post.update(params[:post])
    redirect_to :action => :index
  end

  def destroy
    Post.delete(params[:id])
    redirect_to :action => :index
  end
end

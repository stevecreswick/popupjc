class BlogsController < ApplicationController

  def index
    @blogs = Blog.all
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    blog = Blog.find(params[:id])
    blog.update(blog_params)
    redirect_to blogs_path
  end

  def new
    @blog = Blog.new
  end

  def create
    blog = Blog.create(blog_params)
    redirect_to blogs_path
  end

  def destroy
    Blog.destroy(params[:id])
    redirect_to blogs_path
  end

  def admin
  end

  private

  def blog_params
    params.require(:blog).permit( :title, :tagline, :message,
    :country, :url_model, :header_image )
  end

end

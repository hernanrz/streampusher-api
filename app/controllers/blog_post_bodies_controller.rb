class BlogPostBodiesController < ApplicationController
  def create
    authorize! :create, BlogPost
    blog_post = @current_radio.blog_posts.find(params[:blog_post_body][:blog_post_id])
    @blog_post_body = blog_post.blog_post_bodies.new blog_post_body_params
    if @blog_post_body.save
      render json: @blog_post_body
    else
      render json: @blog_post_body.errors
    end
  end

  private
  def blog_post_body_params
    params.require(:blog_post_body).permit(:title, :body)
  end
end
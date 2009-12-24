# Define your named routes inside config/urls.rb or define them inline
# You can also use unnamed routes by defining them directly

Blog.controllers :frontend, :comments do  
  post :create, :map => '/post/:post_id/comments/create' do
    @post = Post.from_param(params[:post_id])
    @comment = @post.comments.new(params[:comment])
    if @comment.save
      render 'comments/create.js'
    end
  end
end
class PostsController < ApplicationController
 def new
  @post = Post.new
 end

 def create
    @post = Post.new(post_params)
    @post.image.attach(params[:image])
    #@post.image.attach(io: File.open("/path/to/file.jpg"), filename: "pic.jpg", content_type: "image/jpg")
    @post.save

    if @post.save
        redirect_to test_post_path
    else 
      flash[:alert] = 'Please add an image'
      render :new
    end
 end 

 def index
  @posts = Post.all.with_attached_image
 end 

 private 

 def post_params
  params.require(:post).permit(:message, :image)
end


end

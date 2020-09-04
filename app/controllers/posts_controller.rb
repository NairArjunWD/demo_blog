class PostsController < ApplicationController

    def index
    end

    # Display New Post Form
    def new
        # @post = Post.new
    end

    # Create New Post
    def create
        # @post = Post.new(post_params)

        # if @post.save
        #     redirect_to @post
        # else
        #     render 'new'
        # end

        render plain: params[:post].inspect
    end

    private

    # Display the created posts with title and content
    def post_params
        params.require(:post).permit(:title, :content)
    end

end

class PostsController < ApplicationController

    def index
        @post = Post.all
    end

    def show
        @post = Post.find(params[:id])
    end

    # Display New Post Form
    def new
        @post = Post.new
    end

    def edit
        @post = Post.find(params[:id])
    end

    # Create New Post
    def create
        @post = Post.new(post_params)

        if @post.save
            redirect_to @post
        else
            render 'new'
        end

        # render plain: params[:post].inspect
    end

    def update
        @post = Post.find(params[:id])

        if @post.update(post_params)
            redirect_to @post
        else
            render 'edit'
        end
    end

    private

    # Display the created posts with title and content
    def post_params
        params.require(:post).permit(:title, :content)
    end

end

class PostsController < ApplicationController
    def index
      @posts = Post.all.page(params[:page]).per(10)
    end

    def new
        @post = Post.new
    end

    def create
        post = Post.new(post_params)
        if post.save
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end
    
      private
      def post_params
        params.require(:post).permit(:title, :form, :idea)
      end

end

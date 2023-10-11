class AnimesController < ApplicationController
    
    def index
        @longs = Anime.where(category: "long").first(5)
        @normals = Anime.where(category: "normal").first(5)
        @shorts = Anime.where(category: "short").first(5)
        @posts = Post.first(3)
    end

    def new
    @anime = Anime.new
  end

  def long
    @animes = Anime.all
  end

  def normal
    @animes = Anime.all
  end

  def short
    @animes = Anime.all
  end

  def create
    anime = Anime.new(anime_params)
    if anime.save!
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end

  def show
    @anime = Anime.find(params[:id])
  end

  def edit
    @anime = Anime.find(params[:id])
  end

  def update
    anime = Anime.find(params[:id])
    if anime.update(anime_params)
      redirect_to :action => "show", :id => anime.id
    else
      redirect_to :action => "new"
    end
  end

  def destroy
    anime = Anime.find(params[:id])
    anime.destroy
    redirect_to action: :index
  end

  private
  def anime_params
    params.require(:anime).permit(:title, :contents, :episode, :image, :category, :platform)
  end
 
end


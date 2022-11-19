class ArticlesController < ApplicationController
  # this means it inherits from appliction controller
  def index
    #@articles is an instance
  @articles = Article.all
  end

  def show 
    @article = Article.find(params[:id])
  end

  def new 
    @article= Article.new
  end 

  def create
    @article= Article.new(title: "...", body: "...")

    if @article.save 
      redirect_to @article
    else 
      render :new, status::unprocessable_entity
    end 
  end
end

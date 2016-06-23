class ArticlesController < ApplicationController
  
  before_action :authenticate_user!, :set_user

  def index
    @articles = @user.articles.all 
  end

  def new
    @article = @user.articles.new
  end

  def create
    @article = @user.articles.new(article_params)
    if @article.save 
      redirect_to :action => 'index'
    else
      render 'new'
    end
  end

  def edit
    @article = @user.articles.find params[:id]

  end

  def update
    @article = @user.articles.find params[:id]
   
    if @article.update(article_params)
      redirect_to :action => 'index'
    else
      render 'edit'
    end
  end

  def destroy
    @article = @user.articles.find params[:id]
    @article.destroy
    redirect_to :action => 'index'
  end

  protected 
  def set_user
    @user = current_user
  end

  def article_params
    params.require(:article).permit(:title, :content, :city, :video, :cover_image, 
      images_attributes: [:id, :img, :caption, :_destroy])
  end
end

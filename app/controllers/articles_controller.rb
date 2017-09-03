class ArticlesController < ApplicationController
  before_action :find_article, only: [:edit, :update, :show, :delete]

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = "Successfully created article!"
      redirect_to article_path(@article)
    else
      flash[:alert] = "Error creating new article!"
      redirect_to :new
    end
  end

  def edit
  end

  def update
    if @article.update_attributes(article_params)
      flash[:notice]= "Successfully updated article!"
      redirect_to article_path
    else
      flash[:alert] = "Error in editing article!"
      redirect_path :new
    end
  end

  def show

  end

  def destroy
    if @article.delete
      flash[:notice] = "Successfully deleted article!"
      redirect_path article_path
    else
      flash[:notice] = "Error in deleting article!"
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :content, :author)
  end

  def find_article
    @article = Article.find(params[:id])
  end

end

class ArticlesController < ApplicationController
  def show
    @article = Article.find_by(id: params[:id])
    render :article
  end
end

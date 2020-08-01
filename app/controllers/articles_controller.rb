class ArticlesController < ApplicationController
  before_action :fetch_article, only: %i[show edit update destroy]
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    @article.update(article_params)
    if @article.save
      redirect_to @article
    else
      render :edit
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end

  def fetch_article
    @article = Article.find(params[:id])
  end
end

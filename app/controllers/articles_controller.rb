class ArticlesController < ApplicationController
  include ArticlesHelper

  def index
    @articles = Article.all
    # we cant make this a local variable, because then it would only be accessed in the index method
  end
  def show
    a = Article.find(params[:id])
    @a = a
    b = params[:extra]
    if(b.nil? || b.empty?)
      b = "the extra parameter"
    end
    @b = b
  end

  def new
    @article = Article.new
  end
  # this is method that gives the instance variable the value of Article.all
  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to article_path(@article)

  end

  def destroy
    Article.find(params[:id]).destroy
    redirect_to(articles_path)
  end

end

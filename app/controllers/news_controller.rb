class NewsController < ApplicationController

  before_action :news_set, only: [:show]

  def index
    @news = News.all.order("id DESC")
  end

  def show
  end

  def new
  end

  def edit
  end

  protected
  def news_set
    @news = News.find(params[:id])
  end
end


class MainsController < ApplicationController
  def index
    @news = News.all.first
    @lives = Schedule.all.first
  end

  def what
    @what = Main.all.first
  end
end

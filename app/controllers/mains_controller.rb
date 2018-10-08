require 'date'
class MainsController < ApplicationController
  def index
    @news = News.all.order("id DESC").first
    @lives = Schedule.all.where(types: "0").where("DATE(date) >= '#{Date.today}'").order("date ASC").first
  end

  def what
    @what = Main.all.first
  end
end

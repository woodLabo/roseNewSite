class DiscographiesController < ApplicationController

  before_action :disco_set, only: [:show]

  def index
    @disco = Discography.all
    @single = Discography.where(types: 1)
    @album = Discography.where(types: 2)
    @dvd = Discography.where(types: 3)
  end

  def show
  end

  def new
  end

  private
  def disco_set
    @disco = Discography.find(params[:id])
  end
  

end

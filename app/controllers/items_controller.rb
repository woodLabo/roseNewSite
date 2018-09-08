class ItemsController < ApplicationController
  def index
    @item_cd = Discography.where(types: 1..2).order("id ASC")
    @item_dvd = Discography.where(types: 3) 
    @good = Item.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def contact
    
  end
end

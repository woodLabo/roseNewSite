class ClansController < ApplicationController
  def index
    @clan_gu = Clan.all.where(part: 1).order("name DESC")
    @clan_ba = Clan.all.where(part: 2)
    @clan_dr = Clan.all.where(part: 3)
    @clan_ot = Clan.all.where(part: 4)
  end

  def show
  end

  def new
  end

  def edit
  end
end

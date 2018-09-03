require "uri"
class SchedulesController < ApplicationController
  
  before_action :set_schedule, only: [:show, :edit]

  def index
    @live = Schedule.all.where(types: "0").order("date ASC")
    @meet = Schedule.all.where(types: "1")
  end

  def show
  end

  def new
  end

  def edit
  end

  protected

  def schedule_params
    params.require(:schecule).permit(:date, :title, :open_time, :start_time, :adv, :door, :appearances, :details, :types)
  end
  
  def set_schedule
    @schedule = Schedule.find(params[:id])
  end

end

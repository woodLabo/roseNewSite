require 'date'
require "uri"
class SchedulesController < ApplicationController
  
  before_action :set_schedule, only: [:show, :edit]

  def index
    @live = Schedule.all.where(types: "0").where("DATE(date) >= '#{Date.today}'").order("date ASC")
    @meet = Schedule.all.where(types: "1").where("DATE(date) >= '#{Date.today}'").order("date ASC")
    @instore = Schedule.all.where(types: "3").where("DATE(date) >= '#{Date.today}'").order("date ASC")
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

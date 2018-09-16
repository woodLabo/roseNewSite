class ContactsController < ApplicationController

  def index
    @t_contact = Contact.new
    @schedule = Schedule.all.where(reservation: 0)
    @name = session[:name]
    @email = session[:email]
    @date = session[:date]
    @count = session[:count]
  end

  def ticket_conf
    @t_contact = Contact.new
    @name = params[:contact][:name]
    @email = params[:contact][:email]
    @date = params[:contact][:date]
    @place = Schedule.find_by(date: @date)
    @count = params[:contact][:count]
    session[:name] = @name
    session[:email] = @email
    session[:date] = @date
    session[:count] = @count
    session[:hoge] = "hoge"
  end

  def ticket_thanks 
    @t_contact = Contact.new(contact_params) 
    if @t_contact.save
      session[:name] = nil
      session[:email] = nil
      session[:date] = nil
      session[:count] = nil
      ContactMailer.contact_mail(@t_contact).deliver_later
    else
      render :index
    end

  end

  def other_conf
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :email, :date, :count, :details)
  end
end

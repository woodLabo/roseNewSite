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
    @schedule = Schedule.all.where(reservation: 0)
    unless params[:contact][:date]
      flash[:notice] = "日程が選択されておりません"
      render :index
    else
      @name = params[:contact][:name]
      @email = params[:contact][:email]
      @date = params[:contact][:date]
      @place = Schedule.find_by(date: @date)
      @count = params[:contact][:count]
      session[:name] = @name
      session[:email] = @email
      session[:date] = @date
      session[:count] = @count
    end
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

  def main_contact
    @contact = Contact.new
    @name = session[:name]
    @email = session[:email]
    @details = session[:details]
  end

  def conf
    @contact = Contact.new
    @name = params[:contact][:name]
    @email = params[:contact][:email]
    @details = params[:contact][:details]
    session[:name] = @name
    session[:email] = @email
    session[:details] = @details
  end

  def thanks
    @contact = Contact.new(main_contact_params) 
    if session[:name]
      if @contact.save
        session[:name] = nil
        session[:email] = nil
        session[:details] = nil
        ContactMailer.main_contact_mail(@contact).deliver_later
      else
        render :index
      end  
    else
      redirect_to("/.index")
    end
  end

  def item_contact
    @contact = Contact.new
    @name = session[:name]
    @email = session[:email]
    @details = session[:details]
  end

  def item_conf
    @contact = Contact.new
    @name = params[:contact][:name]
    @email = params[:contact][:email]
    @details = params[:contact][:details]
    session[:name] = @name
    session[:email] = @email
    session[:details ] = @details
  end

  def item_thanks
    @contact = Contact.new(main_contact_params)
    if @contact.save
        session[:name] = nil
        session[:email] = nil
        session[:details] = nil
        ContactMailer.item_contact_mail(@contact).deliver_later
      else
        render :index
      end  
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :email, :date, :count)
  end

  def main_contact_params
    params.require(:contact).permit(:name, :email, :details)
  end
end

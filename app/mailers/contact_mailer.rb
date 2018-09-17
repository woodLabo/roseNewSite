class ContactMailer < ApplicationMailer
  default form: "web.works.ms@gmail.com"

  def contact_mail(user)
    @user = user  
    mail(:to => "web.works.ms@gmail.com",
    :subject => "ホームページからお問い合わせがありました")
  end

  def main_contact_mail(user)
    @user = user
     mail(:to => "web.works.ms@gmail.com",
    :subject => "ホームページからお問い合わせがありました")
  end
end

class ContactMailer < ApplicationMailer
  default form: "web.works.ms@gmail.com"

  def contact_mail(user)
    @user = user  
    mail(:to => @user.email,
    :subject => "ホームページからお問い合わせがありました")
  end
end

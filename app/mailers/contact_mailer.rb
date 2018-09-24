class ContactMailer < ApplicationMailer
  #default form: "web.works.ms@gmail.com"
  default form: "from_vampire_rose@yahoo.co.jp"

  def contact_mail(user)
    @user = user  
    mail(:to => "from_vampire_rose@yahoo.co.jp",
    :subject => "ホームページからお問い合わせがありました")
  end

  def main_contact_mail(user)
    @user = user
     mail(:to => "from_vampire_rose@yahoo.co.jp",
    :subject => "ホームページからお問い合わせがありました")
  end

  def item_contact_mail(user)
    @user = user
    mail(:to => "vampirerose1017@gmail.com",
    :subject => "ホームページからお問い合わせがありました")
  end
end

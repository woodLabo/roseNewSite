class Contact < ApplicationRecord
  validates :name, :email, :date, :count, presence:true
  
end

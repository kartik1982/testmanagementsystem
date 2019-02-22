class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


   def full_name
    return "#{firstname} #{lastname}".strip if (firstname || lastname)
    # "Anonymous"
   end
end

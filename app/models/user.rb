class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates_presence_of :username
  devise :database_authenticatable, :registerable,
         :trackable, :validatable
end

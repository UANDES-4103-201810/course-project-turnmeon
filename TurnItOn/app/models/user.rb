class User < ApplicationRecord
	has_many :ideas
	has_many :messages
	has_many :promises
	has_many :favourite_ideas
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

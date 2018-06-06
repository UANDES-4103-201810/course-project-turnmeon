class User < ApplicationRecord
	has_many :ideas
	has_many :messages
	has_many :promises
	has_many :favourite_ideas
	has_many :funds
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :omniauthable
	 

  def self.find_for_facebook_oauth(auth)
	where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
		user.email = auth.info.email
		user.provider = auth.provider
		user.uid = auth.uid
		user.password = Devise.friendly_token[0,20]
		user.first_name = auth.info.name
	end		
  end

end

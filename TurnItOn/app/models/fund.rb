class Fund < ApplicationRecord
  belongs_to :user
  belongs_to :idea
  before_create :confirmation_token
	
	validates :amount, :presence => true, :numericality => { :greater_than_or_equal_to => 1}

	def mail_activate
		self.fund_confirmed = true
		self.confirm_token = nil
		save!(validate => false )
	end

  private

	def confirmation_token

		if self.confirm_token.blank?
			self.confirm_token = SecureRandom.urlsafe_base64.to_s
		end
	end
		

end

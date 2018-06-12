class Fund < ApplicationRecord
  belongs_to :user
  belongs_to :idea
	
	validates :amount, :presence => true, :numericality => { :greater_than_or_equal_to => 1}

end

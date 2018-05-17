class Idea < ApplicationRecord
	belongs_to :user
	has_many :messages
	belongs_to :category
end

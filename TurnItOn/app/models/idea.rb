class Idea < ApplicationRecord
	belongs_to :user
	has_many :messages
	has_many :promises
	belongs_to :category
	has_many :funds
	has_attached_file :idea_image, :styles => { :idea_index => "250x300>", :idea_show => "325x475>" }, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :idea_image, :content_type => /\Aimage\/.*\z/

	
	
end

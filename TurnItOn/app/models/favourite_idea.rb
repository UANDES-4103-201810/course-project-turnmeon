class FavouriteIdea < ApplicationRecord
  belongs_to :user
  belongs_to :idea
  
  def self.manage(idea)
	object = find_by(idea: idea)
	object ? object.destroy : create(idea: idea)
  end
end

module IdeasHelper

	def favourite_idea(idea)
		if user_signed_in?
			if current_user.favourite_ideas.map(&:idea).include?(idea)
				'text-success'
			else
				'text-muted'
			end
		end
	end
end

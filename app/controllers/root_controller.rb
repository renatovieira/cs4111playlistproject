class RootController < ApplicationController
	
	def home
		if logged_in?
			redirect_to my_playlists_url
		else
			redirect_to login_url
		end
	end

end

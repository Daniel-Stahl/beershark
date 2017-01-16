class BarKeepController < ApplicationController
	def profile_params
		params.require(:bar_keep).permit(:profile_pic)
	end
end

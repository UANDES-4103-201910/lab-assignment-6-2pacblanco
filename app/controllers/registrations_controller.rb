class RegistrationsController < ApplicationController
	def new
	
	end

	def create
	    #done
		@user = User.create(user_params)
		if @user.save
			redirect_to "/" , notice: 'Registro exitoso!'
		else
			redirect_to registrations_url, notice: @user.errors.messages
		end  

	end

	def user_params
		params.require(:registrations).permit(:name,:last_name,:email,:password,:phone)
	end
end

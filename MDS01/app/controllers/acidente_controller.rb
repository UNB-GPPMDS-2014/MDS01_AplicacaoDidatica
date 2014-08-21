class AcidenteController < ApplicationController
	def new
		@acidente = Acidente.new
	end

	def create 
		@acidente = Acidente.new(params[:acidente])
		if @acidente.save
			redirect_to @acidente,
						:notice => 'Cadastro criado com sucesso!'
		else
			render :new
		end
	end
end





class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])
		if @user.save
		redirect_to @user,
		            :notice => 'Cadastro criado com sucesso!'
		else
		render :new
		end
	end
end	
class ControleEmpregado < AplicationController 
    def new 
    	@empregado = Empregado.new
    end

   def create 
   		@empregado = Empregado.new(params[:empregado])
   		if @empregado.save
   			redirect_to @empregado,
   							:notice => 'Cadastro criado com sucesso!'

   		else
   			render :new
   		end
   	end

end
class Empregado < ActiveRecord::Base
	attr_accessible :nome, :idade, :cpf, :departamento
end
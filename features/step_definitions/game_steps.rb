# encoding: UTF-8
Quando /^começo um novo jogo$/ do
	@game = Game.new
	@game.start
end
Então /^vejo a seguinte mensagem na tela:$/ do |text|
	expect(@game.output).to include(text)
end

#O que fizemos foi implementar os step definitions, definindo quais partes da API
#do nosso sofware cada step definition vai utilizar

class Game
	attr_reader :output 
	
	#método responsável por retornar o conteúdo da variável output
	
	def initialize
		@output = []
	end
	
	def start
		@output << "Bem vindo ao jogo da forca!"
	end
end

#Os testes com rspec e cucumber descrevem o comportamento da aplicação
#Segundo Dan North, Ao fazer TDD, o desenvolvedor está 
#especificando o comportamento do seu sofware e definindo seu design
#BDD: Comece primeiro especificando o comportamento de uma funcionalidade. 
#Depois disso, especifique as classes e métodos que serão necessárias para 
#implementar essa funcionalidade
#A pratica de começar o desenvolvimento de software com testes de aceite e depois 
# testes de unidade é conhecido como ATDD - acceptance test-driven development
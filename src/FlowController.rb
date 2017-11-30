#!/usr/bin/ruby
load 'Random.rb'
load 'Prey.rb'
load 'PreyGenerator.rb'

class FlowController
  def initialize()
		@preyGenerator = PreyGenerator.new()
	end
	
	def isGameEnded()
		true
	end

	def isRoundEnded(prey)
		prey.Distance <= 0
	end

	def PlayGame()
		prey = @preyGenerator.Generate()
		while isRoundEnded(prey) == false
			proceedRound(prey)
		end
	end

	def proceedRound(prey)
		prey.Chase()
		prey.Dump()		
	end
end

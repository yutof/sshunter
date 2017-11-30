#!/usr/bin/ruby
load 'Random.rb'
load 'Prey.rb'

class PreyGenerator
	def NUM_OF_PREY
		2
	end
  def initialize()
	end
	
	def Generate()
		r = Random.Rand(NUM_OF_PREY())
		case r
		when 1
			Deer.new()
		else
			Coyote.new()
		end
	end
end

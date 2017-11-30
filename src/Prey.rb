#!/usr/bin/ruby
load 'Random.rb'

class Prey
  def initialize(dist:, h:, a:, p:, speed: )
		@ID = 1
		@distance = dist
		@hp = h
		@ap = a
		@point = p
		@maxSpeed = speed
	end

  def Key
    "KEY#{@ID}"
  end
   
  def Chase()
    @distance -= Random.Rand(@maxSpeed)
  end 
  
	def Shoot(damage)
		@hp -= damage
	end

  def Point
		@point
	end

	def Distance 
		@distance
	end

  def Dump()
		puts "#{self.class.name} Distance:#{@distance} "
  end
  
end

class Deer < Prey
	def initialize()
		super(dist:10, h:2, a:1, p:3, speed:2)
	end
end

class Coyote < Prey
	def initialize()
		super(dist:10, h:1, a:2, p:4, speed:4)
	end
end

class Bear < Prey
	def initialize()
		super(dist:10, h:7, a:5, p:20, speed:2)
	end
end



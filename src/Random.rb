#!/usr/bin/ruy

class Random
	def self.Init()
		@@rand = Random.new()
	end

	def self.Rand(num =100)
		@@rand.rand(num)
	end

  def self.Dump()
    puts "TEST "
  end
    
end

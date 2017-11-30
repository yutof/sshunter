#!/usr/bin/ruby
#require_relative 'AuctionManager.rb'
load 'Config.rb'
load 'Random.rb'
load 'Prey.rb'
load 'PreyGenerator.rb'
load 'FlowController.rb'

def puts(o)
  if PRINT_ENABLED
    super(o)
  end 
end

def PlayGame()
	puts "Playing!"
end


start = Time.now
puts "Start the game! Count #{AUCTION_COUNT}"
for i in 1..TEST_GAME_COUNT
  PlayGame()
end

finish = Time.now
diff = finish - start
puts "Ended. Took #{diff}"
Random.Init()
Random.Dump()

deer = Deer.new()
deer.Dump()

generator = PreyGenerator.new()
for i in 1..30
	generator.Generate().Dump()
end

fc = FlowController.new()
fc.PlayGame()

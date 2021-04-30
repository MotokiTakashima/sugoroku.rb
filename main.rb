require "pry"
require "./sugoroku"

player = Player.new(0, 0)
computer = Computer.new(0, 0)
sugoroku = Sugoroku.new

sugoroku.start(player, computer)
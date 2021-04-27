require "pry"
require "./sugoroku"

map = Map.new(max_square: 30)
player = Player.new(0)
computer = Computer.new(0)
dice = Dice.new
sugoroku = Sugoroku.new

sugoroku.informaition(map)
sugoroku.start(player, computer, map, dice)
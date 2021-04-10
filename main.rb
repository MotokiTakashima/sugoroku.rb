require "pry"
require "./sugoroku"

map = Map.new(masu: 30)
player = Player.new(me: 0)
computer = Computer.new(cpu: 0)
dice = Dice.new
sugoroku = Sugoroku.new

sugoroku.informaition(map)
sugoroku.start(player, computer, map, dice)
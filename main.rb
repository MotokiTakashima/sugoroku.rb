require "pry"
require "./sugoroku"

map = Map.new(30)
character = Character.new(0, 0)
player = Player.new(0, 0)
computer = Computer.new(0, 0)
dice = Dice.new
sugoroku = Sugoroku.new

sugoroku.informaition(map)
sugoroku.start(player, computer, map, dice, character)
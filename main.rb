require "pry"
require "./sugoroku"

character = Character.new(0, 0)
player = Player.new(0, 0)
computer = Computer.new(0, 0)
sugoroku = Sugoroku.new

sugoroku.start(player, computer, character)
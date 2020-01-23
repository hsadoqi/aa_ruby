require "set"
require 'pry'
require_relative "player"

class Game
    ALPHABET = Set.new('a'..'z')
    
    def initialize(player_1, player_2)
        words = File.readlines("dictionary.txt").map(&:chomp)
        @player_1 = Player.new(player_1)
        @player_2 = Player.new(player_2)
        @dictionary = Set.new(words)
        binding.pry
    end 

    def current_player 
    end 

    def previous_player 
    end 

    def next_player!
    end 

    def take_turn(player)
    end 

    def valid_play?(string)
    end

    def play_round 

    end 



end 

Game.new("Hanaa", "Maddie")

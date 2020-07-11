# frozen_string_literal: true
require './player.rb'

# Game class will be the game "engine"
class Game
  def initialize
    @board = Board.new
    @player1 = Player.new('Player Uno', 'x')
    @player2 = Player.new('Player Zwei', 'o')

    @current_player = @player1
  end

  def swap_player
    @current_player = @current_player == @player1 ? @player2 : @player1
  end

  def play_game
    puts 'Game Started'
    @board.display_board
    until draw?
      player_choice = 0
      loop do
        player_choice = @current_player.player_input
        break if @board.valid_choice(player_choice)
      end
      @board.add_token(player_choice - 1, @current_player.token)
      @board.display_board
      break if win?

      swap_player
    end
  end

  def win?
    if @board.player_win?(@current_player.token)
      puts "#{@current_player.name} wins!"
      true
    else
      false
    end
  end

  def draw?
    if @board.full?
      puts 'Tie'
      true
    end
  end
  end

# frozen_string_literal: true

#     TIC-TAC-TOE
#
#     PHASE 1
#     [X]we will want a board (array)
#     [X]display board
#     [X]ask for user position
#     [X]add to board
#     [X]ask for 2nd user position
#     [X]add to board
#     [X]display board
#     [X]check for win / tie
#
#     PHASE 2
#     [X]Create Game Class
#     [X]Create Player Class (Player Class will have a token and name)
#     [X]Create Board Class?
#     []Add Display Board Method to Game Class
#     []
#     []
#     []

class Game
  def initialize
    @player1 = Player.new('Player Uno', 'x')
    @player2 = Player.new('Player Zwei', 'o')
    @board = Board.new
  end

  def play_game
    puts 'Game Started'
    @board.display_board
  end
end

class Player
  def initialize(name, token)
    @name = name
    @token = token
  end
end

class Board
    def initialize
        @board = Array(1..9)
    end

    def display_board
        puts "\t \t|\t \t|"
        puts "\t#{@board[0]}\t|\t#{@board[1]}\t|\t#{@board[2]}"
        puts "________________|_______________|____________"
        puts "\t \t|\t \t|"
        puts "\t#{@board[3]}\t|\t#{@board[4]}\t|\t#{@board[5]}"
        puts "________________|_______________|____________"
        puts "\t \t|\t \t|"
        puts "\t#{@board[6]}\t|\t#{@board[7]}\t|\t#{@board[8]}"
        puts "\t \t|\t \t|"
    end
end

game = Game.new
game.play_game

# def print_board(board)
#     puts "\t \t|\t \t|"
#     puts "\t#{board[0]}\t|\t#{board[1]}\t|\t#{board[2]}"
#     puts "________________|_______________|____________"
#     puts "\t \t|\t \t|"
#     puts "\t#{board[3]}\t|\t#{board[4]}\t|\t#{board[5]}"
#     puts "________________|_______________|____________"
#     puts "\t \t|\t \t|"
#     puts "\t#{board[6]}\t|\t#{board[7]}\t|\t#{board[8]}"
#     puts "\t \t|\t \t|"
# end

# def modify_board(player_char, choice, board)
#     board[choice.to_i - 1] = player_char
#     board
# end

# def user_input(board)
#     valid_choice = false
#     until valid_choice do
#         puts 'What is your choice?\t'
#         user_choice = gets.chomp
#         if board.include?(user_choice.to_i) then valid_choice = true end
#     end
#     user_choice
# end

# def win?(board)
#     if  board[0] == board[1] && board[1] == board[2] ||
#         board[3] == board[4] && board[4] == board[5] ||
#         board[6] == board[7] && board[7] == board[8] ||
#         board[0] == board[4] && board[4] == board[8] ||
#         board[0] == board[3] && board[3] == board[6] ||
#         board[1] == board[4] && board[4] == board[7] ||
#         board[2] == board[5] && board[5] == board[8] ||
#         board[2] == board[4] && board[4] == board[6] then
#         puts "Winner!"
#         return true
#     end
#     false
# end

# def draw?(board)
#     board.all? {|i| i.to_i == 0}
# end

# board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
# print_board(board)

# until win?(board) || draw?(board)
#     player_choice = user_input(board)
#     p player_choice
#     board = modify_board("X", player_choice, board)
#     if win?(board) || draw?(board) then break end
#     print_board(board)
#     player_choice = user_input(board)
#     board = modify_board("o", player_choice, board)
#     print_board(board)
# end

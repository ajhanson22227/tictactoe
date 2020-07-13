# frozen_string_literal: true

#     TIC-TAC-TOE
#
#     PHASE 1 - Loops and functions
#     [X]we will want a board (array)
#     [X]display board
#     [X]ask for user position
#     [X]add to board
#     [X]ask for 2nd user position
#     [X]add to board
#     [X]display board
#     [X]check for win / tie
#
#     PHASE 2 - Moving To Classes
#     [X]Create Game Class
#     [X]Create Player Class (Player Class will have a token and name)
#     [X]Create Board Class?
#     [X]Add Display Board Method to Game Class
#     [X]Get User Input for Current Player (Player 1 begins)
#     [X]Append Board
#     [X]Display Board with Player Change
#     [X]Get this to loop until board is full
#     [X]Add method to check for wins in engine
#     [X]Add method to check for draws
#     [X]Add Valid Move Checker
#     [X]Add A list for available winning positions
#     [X]Return Winning player name
#
#     Phase 3 - Moving classes to their own files
#     [X] Moved Game class and main still works
#     [] Moved Player class and main still works
#     [] Moved Board class and main still works

# Phase 2

require './game.rb'

game = Game.new
game.play_game

# PHASE 1
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

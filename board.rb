# frozen_string_literal: true

class Board
  WINS = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]].freeze
  def initialize
    @board = Array(1..9)
  end

  def add_token(index, token)
    @board[index] = token
  end

  def full?
    @board.all? { |i| i.to_i.zero? }
  end

  def player_win?(token)
    WINS.any? do |win|
      first_token = @board[win[0]]
      second_token = @board[win[1]]
      third_token = @board[win[2]]

      token == first_token && token == second_token && token == third_token
    end
  end

  def valid_choice(choice)
    @board.include?(choice.to_i)
  end

  def display_board
      puts <<~HEREDOC
        \t \t|\t \t|
        \t#{@board[0]}\t|\t#{@board[1]}\t|\t#{@board[2]}
        ________________|_______________|____________'
        \t \t|\t \t|
        \t#{@board[3]}\t|\t#{@board[4]}\t|\t#{@board[5]}
        ________________|_______________|____________
        \t \t|\t \t|
        \t#{@board[6]}\t|\t#{@board[7]}\t|\t#{@board[8]}
        \t \t|\t \t|
      HEREDOC
  end
end

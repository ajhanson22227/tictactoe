# frozen_string_literal: true

class Player
  attr_accessor :name, :token
  def initialize(name, token)
    @name = name
    @token = token
  end

  def player_input
    puts "What position do you choose, #{@name}"
    gets.chomp.to_i
  end
end

class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until @game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    ans = require_sequence
    if @game_over == false
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    puts @seq
    add_random_color
  end

  def require_sequence
    puts "Give me a sequence"
    answer = gets.chomp
    if answer != @seq
      @game_over = true
    end
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    p "You go, Glen Coco"
  end

  def game_over_message
    p "It's over, Anakin... I have the high ground"
  end

  def reset_game
    @sequence_length = 1
    until @seq.length == 0
      @seq.pop
    end
    @game_over = false
  end
end

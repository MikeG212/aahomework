class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @player1 = name1
    @player2 = name2
    @cups = Array.new(14) {[]}
    place_stones
  end

  def place_stones
    @cups.map.with_index do |cup, idx|
      next if idx == 6 || idx == 13
      4.times do
        cup << :stone
      end
    end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos < 0 || start_pos > 13
    raise "Starting cup is empty" if @cups[start_pos].nil?
  end

  def make_move(start_pos, current_player_name)
    num_of_stones = @cups[start_pos].length
    @cups[start_pos] = []
    num_of_stones.times do |idx|
      new_idx = start_pos + 1 + idx
      # next if (current_player_name == @player1 && new_idx == 0) || (current_player_name == @player2 && new_idx == 13)
      @cups[new_idx] << :stone
    end
    render
    next_turn(start_pos + num_of_stones)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?

  end

  def winner
  end
end

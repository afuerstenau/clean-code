class GameOfStones
  MIN_NUMBER_TO_PICK = 1
  MAX_NUMBER_TO_PICK = 3
  NAME_PLAYER1 = 'Jeff'
  NAME_PLAYER2 = 'Jill'

  def initialize(initial_number_of_stones)
    @number_of_stones = initial_number_of_stones
    @player_names = [NAME_PLAYER1, NAME_PLAYER2]
  end

  def start!
    @player_names.cycle do |player_name|
      puts "There are #{@number_of_stones} left"
      puts "#{player_name}: Pick a number between #{MIN_NUMBER_TO_PICK} and #{maximum_number_to_pick}"
      pick_a_number! player_name
      break if @number_of_stones.zero?
    end
  end

  private

  def pick_a_number!(player_name)
    number_of_stones_picked = gets.to_i
    if number_of_stones_picked.between?(MIN_NUMBER_TO_PICK, maximum_number_to_pick)
      @number_of_stones -= number_of_stones_picked
      puts "#{player_name} lost" if @number_of_stones.zero?
    else
      puts "#{player_name} Sorry, wrong number!"
      pick_a_number! player_name
    end
  end

  def maximum_number_to_pick
    [MAX_NUMBER_TO_PICK, @number_of_stones].min
  end
end

(GameOfStones.new 10) .start!

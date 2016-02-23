class Game < ActiveRecord::Base
	has_many :clues
	has_many :rounds
	belongs_to :user

	validates :name, presence: true
	validates :theme, presence: true

	def generate_board(board_size = 25, clues)
    clues = clues.shuffle
    if clues.length == board_size
      return clues
    else
      if clues.length > board_size
        return clues[0...board_size]
      else
        remaining = board_size % clues.length
        if remaining == 0
          generate_board(board_size, clues * board_size.div(clues.length))
        else
          generate_board(board_size, clues + clues[0...remaining])
        end
      end
    end
  end
end

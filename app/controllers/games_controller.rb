class GamesController < ApplicationController
  def new
  end

  def score
  end

  private

  # # Checks that the word is on the english dictionary
  # def english?(word)
  #   url = "https://dictionary.lewagon.com/#{word}"
  #   word_serialized = URI.open(url).read
  #   JSON.parse(word_serialized)["found"]
  # end

  # # Check that the word is in the grid
  # def grid?(grid, word)
  #   word.chars.all? { |letter| word.count(letter) <= grid.count(letter) }
  # end

  # def message(attempt, grid)

  #   ##### 1. The attempt is NOT an english word, score = 0, msg = "Not an english word"
  #   ##### 2. The attempt is NOT in the grid, score = 0, msg = "Not in the grid"
  #   ##### 3. The attemt IS in the grid AND IS an english word, score = calculate_score(), msg = "Cool, you are the best!"

  #   if english?(attempt) && grid?(grid, attempt)
  #     "Cool, you are the best!"
  #   elsif english?(attempt) == false
  #     "#{attempt} is not an english word"
  #   else
  #     "#{attempt} is not in the grid"
  #   end
  # end
end

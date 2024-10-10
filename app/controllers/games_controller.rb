class GamesController < ApplicationController
  require 'open-uri'

  def new
    @grid = generate_grid(15)
  end

  def score
    @word = params['word']
    @grid = params['grid']

    @is_english = english?(@word)
    @is_in_grid = grid?(@grid, @word.upcase)
    @message = message(@word.upcase, @grid)
  end

  private

  def english?(word)
    url = "https://dictionary.lewagon.com/#{word}"
    word_serialized = URI.open(url).read
    JSON.parse(word_serialized)['found']
  end

  def generate_grid(grid_size)
    Array.new(grid_size) { ('A'..'Z').to_a.sample }
  end

  def grid?(grid, word)
    word.chars.all? { |letter| word.count(letter) <= grid.count(letter) }
  end

  def message(attempt, grid)
    if english?(attempt) && grid?(grid, attempt)
      'Cool, you are the best!'
    elsif english?(attempt) == false
      "#{attempt} is not an english word"
    else
      "#{attempt} is not in the grid"
    end
  end
end

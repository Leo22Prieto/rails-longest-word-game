class GamesController < ApplicationController
  def new
    @letters = []
    10.times { @letters << ('A'..'Z').to_a.sample }
  end

  def score
    user_word = params[:word].split('')
    user_word.each do |letter|
      if @letters.include(letter)
        @letters.delete_at(@letters.find_index(letter))
        @answer = true
      else
        @answer = "Sorry but #{@word.upcase} can't be built out of #{@letters}"
        exit
      end
    end
  end
end

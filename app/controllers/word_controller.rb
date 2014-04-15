class WordController < ApplicationController
  def search
    if params[:word]
      word = params[:word].chars.sort.join
      @words = Word.where(:anagram => word)
    else
      @words = []
    end
  end
end

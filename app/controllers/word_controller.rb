class WordController < ApplicationController
  def search
  end

  def results
    word = params[:word].chars.sort.join
    Word.find(:anagram => word).all
  end
end

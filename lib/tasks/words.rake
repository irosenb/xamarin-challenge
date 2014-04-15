namespace :words do
  desc "Loads words from the Letterpress file, converts them into anagrams"
  task add: :environment do
    File.open("/Users/isaac/Desktop/en.txt", "r") do |f|
      words = []
      f.each_line do |word|
        clean_word = word.strip
        puts clean_word
        term = Word.new({:term => clean_word, :anagram => clean_word.chars.sort.join})
        words << term
      end
      Word.import(words)
    end
  end

end

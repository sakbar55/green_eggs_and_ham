class GreenEggsAndHam

  def initialize
    @text = File.read('green_eggs_and_ham.txt')
  end

  def word_count
    @text.split.count
  end

  def sorted_unique_words
    words = @text.gsub(/[,.?!]/,"").split
    words.map { |word| word.downcase }.uniq.sort
  end

  def number_of_words_shorter_than(number)
    words = @text.gsub(/[,.?!]/,"").split
    short_words = words.select { |word| word.length < number }
    short_words.count
  end

  def longest_word
    words = @text.gsub(/[,.?!]/, "").split
    words.max { |word| word.length }
  end
end

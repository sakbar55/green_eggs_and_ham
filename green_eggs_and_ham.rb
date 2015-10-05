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
end

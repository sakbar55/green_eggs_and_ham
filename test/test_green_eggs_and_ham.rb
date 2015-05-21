require 'bundler/setup'
require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/reporters'

require 'green_eggs_and_ham'

Minitest::Reporters.use!

class GreenEggsAndHamTest < MiniTest::Test

  def setup
    @book = ::GreenEggsAndHam.new
  end

  def test_01_count_of_total_words
    assert_equal 116, @book.word_count
  end

  def test_02_all_unique_words_sorted
    expected = ["I", "Sam", "Sam-I-am", "That", "Would", "a", "am", "and", "anywhere", "do", "eggs", "green", "ham", "here", "house", "in", "like", "mouse", "not", "or", "that", "them", "there", "with", "would", "you"], []
    assert_equal expected, @book.sorted_unique_words
  end

  def test_03_all_unique_words_and_frequency
    expected = {"I"=>15, "am"=>2, "Sam"=>2, "That"=>2, "Sam-I-am"=>6, "do"=>11, "not"=>13, "like"=>15, "that"=>1, "them"=>11, "green"=>3, "eggs"=>3, "and"=>3, "ham"=>3, "would"=>2, "here"=>2, "or"=>2, "there"=>2, "anywhere"=>2, "Would"=>2, "you"=>2, "in"=>2, "a"=>4, "house"=>2, "with"=>2, "mouse"=>2}
    assert_equal expected, @book.frequency_of_unique_words
  end

  def test_04_count_of_words_less_than_four_letters
    assert_equal 59, @book.words_shorter_than(4)
  end

  def test_05_longest_word
    assert_equal "Sam-I-am", @book.longest_word
  end

  def test_06_how_many_stanzas
    assert_equal 6, @book.stanzas.count
  end

  def test_07_line_count_should_not_include_blanks
    assert_equal 19, @book.lines.count
  end

  def self.test_order
    :alpha
  end
end
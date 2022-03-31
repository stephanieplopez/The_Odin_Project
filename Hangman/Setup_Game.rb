class SetupGame
  attr_accessor :valid_words, :answer

  def initialize
    @valid_words = clean_file
    @answer = select_correct_answer(valid_words)
  end

  def clean_file
    contents = File.readlines('lib/google-10000-english-no-swears.txt')
    valid_words = []
    contents.each do |word|
      valid_words.append(word.strip) if word.length >= 6 and word.length <= 13
    end
    puts 'File has been processed and cleaned successfully!'
    valid_words
  end

  def select_correct_answer(valid_words)
    valid_words[rand(8451)]
  end

end
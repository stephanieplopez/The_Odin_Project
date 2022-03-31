class File_Processor
  attr_accessor :valid_words, :answer

  def initialize()
    @valid_words = clean_file()
    @answer = select_correct_answer(valid_words)
  end

  def clean_file()
    contents = File.readlines('lib/google-10000-english-no-swears.txt')
    valid_words = []
    contents.each do |word|
      if word.length() >= 5 and word.length() <= 12
        valid_words.append(word.strip())
      end
    end
    puts "File has been processed and cleaned successfully!"
    return valid_words
  end

  def select_correct_answer(valid_words)
    valid_words[rand(8451)]
  end

end
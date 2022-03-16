class File_Processor

    def clean_file()
        contents = File.read('google-10000-english-no-swears.txt')
        valid_words = []
        contents.each do |word|
            if word.length >= 5 OR word.length <= 12
                valid_words.append(word)
            end
        puts "File has been processed and cleaned successfully!"
    end
        
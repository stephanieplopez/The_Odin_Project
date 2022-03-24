class File_Processor

    def clean_file()
        contents = File.readlines('lib/google-10000-english-no-swears.txt')
        valid_words = []
        puts contents
        contents.each do |word|
            if word.length() >= 5 and word.length() <= 12
                puts word
                valid_words.append(word)
            end
        end
        puts "File has been processed and cleaned successfully!"
        return valid_words
    end
end
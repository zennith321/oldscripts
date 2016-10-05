print "Enter a sentence and I will redact some words: "
user_sentence = gets.chomp
print "Enter the words to redact: "
redacted_word = gets.chomp
word_array = user_sentence.split(" ")
word_array.each do |word|
    if word == redacted_word
        print "REDACTED"
    else
        print word
    end
    print " "
end


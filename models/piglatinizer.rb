class PigLatinizer
attr_accessor :user_phrase

def piglatinize(user_phrase)
    if user_phrase.split(" ").length == 1
        piglatinize_word(user_phrase)
    else
        piglatinize_sentence(user_phrase)
    end
end

def vowel?(letter)
    letter.match(/[aAeEiIoOuU]/)
  end

def piglatinize_word(word)
    if vowel?(word[0])
      word = word + "w"
    elsif !vowel?(word[0]) && !vowel?(word[1]) && !vowel?(word[2])
      word = word.slice(3..-1) + word.slice(0,3)
    elsif !vowel?(word[0]) && !vowel?(word[1])
      word = word.slice(2..-1) + word.slice(0,2)
    else
      word = word.slice(1..-1) + word.slice(0)
    end
    word << "ay"
end

def piglatinize_sentence(sentence)
    sentence.split.collect { |word| piglatinize_word(word)}.join(" ")
end

end # end of class
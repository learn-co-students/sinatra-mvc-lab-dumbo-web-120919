class PigLatinizer

    ## For words starting with consonants, move all consonants ot the end of word && add 'ay' to the end

    ## For words starting with vowels, add 'way' to the end

    def add_words(words)
        # Check if the word starts with vowels
        if /^[aeiou]/i.match(words) # (The i at the end of the expression says we’re ignoring case so the expression will match any vowel, uppercase or lowercase)
            "#{words}way"
        else
            # take the words and split it at the first vowel and...
            #... give an array of everything before the first vowel & everything after the first vowel
            arr = words.split(/([aeiou].*)/)
            "#{arr[1]}#{arr[0]}ay"
        end
    end

    def piglatinize(string)
        str_arr = string.split(" ")
        str_arr.map do |word|
            add_words(word)
        end.join(' ')
    end

end


# class PigLatinizer

#     def piglatinize(input_str)
#       input_str.split(" ").length == 1 ? piglatinize_word(input_str) : piglatinize_sentence(input_str)
#     end
  
#     private
  
#     def consonant?(char)
#       !char.match(/[aAeEiIoOuU]/)
#     end
  
#     def piglatinize_word(word)
#       # word starts with vowel
#       if !consonant?(word[0])
#         word = word + "w"
#       # word starts with 3 consonants
#       elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
#         word = word.slice(3..-1) + word.slice(0,3)
#       # word starts with 2 consonants
#       elsif consonant?(word[0]) && consonant?(word[1])
#         word = word.slice(2..-1) + word.slice(0,2)
#       # word starts with 1 consonant
#       else
#         word = word.slice(1..-1) + word.slice(0)
#       end
#       word << "ay"
#     end
  
#     def piglatinize_sentence(sentence)
#       sentence.split.collect { |word| piglatinize_word(word) }.join(" ")
#     end
  
#   end

# MY CODE-ALONG W/ SOLUTION CODE
# class PigLatinizer

#     def piglatinizer(str)
#         # turn string into array
#         str_arr = str.split(" ")
#         # if there's only 1 word, call pl_word method, otherwise call pl_sentence method
#         if str_arr.length == 1
#             pl_word(str)
#         else
#             pl_sentence(str)
#         end
#     end

#     private
#     # helper method: check if the character is a consonant
#     def consonant?(char)
#         # anything that's not a vowel is a consonant
#         !char.match(/[aeiouAEIOU]/)
#     end

#     def pl_word(str)
#         # if the word starts with vowel, add additional "w" to the end
#         if !consonant?(str[0])
#             str = str + 'w'
#         # if the word starts with 3 consonants, move those consonants to the end of the word
#         elsif consonant?(str[0]) && consonant?(str[1]) && consonant?(str[2])
#             str = str.slice(3..-1) + str.slice(0, 3)
#         # if the word starts with 2 consonants, move those consonants to the end of the word
#         elsif consonant?(str[0]) && consonant?(str[1])
#             str = str.slice(2..-1) + str.slice(0, 2)
#         # otherwise, the word starts with 1 consonant, move it to the end of the word
#         else
#             str = str.slice(1..-1) + str.slice(0)
#         end
#         # in all cases, add 'ay' to the end of each word
#         str + 'ay'
#     end

#     # split the sentence into words, call the pl_word method on each word, and join the str
#     def pl_sentence(str)
#         str.split.collect {|word| pl_word(word)}.join(" ")
#     end
# end
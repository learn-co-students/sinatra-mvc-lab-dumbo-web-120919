class PigLatinizer

    attr_reader :phrase

    def piglatinize(phrase)
        phrase.split(" ").select.map{|word| word_selector(word)}.join(" ")
    end

    def word_changer(prefix, trunk)
        trunk + prefix + "ay"
    end


    def word_selector(word)
        if /[aeiouyAEIOU]/.match(word[0])
            word_changer("w", word)

        # elsif /[(str)]/.match(word[0..2])
        #     word_changer(word[0..2], word[3..-1])

        # elsif /[(bl)(cl)(fl)(gl)(pl)(sl)(br)(cr)(dr)(fr)(gr)(pr)(tr)(sc)(sk)(sm)(sn)(sp)(st)(sw)(tw)]/.match(word[0..1])
        #     word_changer(word[0..1], word[2..-1])

        elsif !/[aeiouyAEIOU]/.match(word[1]) && !/[aeiouyAEIOU]/.match(word[2])
        word_changer(word[0..2], word[3..-1])

        elsif !/[aeiouyAEIOU]/.match(word[1])
            word_changer(word[0..1], word[2..-1])


        else
            word_changer(word[0], word[1..-1])
        end
    end
end
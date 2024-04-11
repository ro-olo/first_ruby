def caesar_cipher (string, shift_value)
  new_string = ""

    string.each_char do |char|

        if  char =~ /[A-Za-z]/ 
            is_uppercase = char == char.upcase
            char = char.upcase
            ascii_code = is_uppercase ? char.ord - 65 : char.ord - 97
            shifted_code = (ascii_code + shift_value) % 26
            shifted_char = is_uppercase ? (shifted_code + 65).chr : (shifted_code + 97).chr
            new_string += shifted_char
        else new_string += char
        end
    end
    
    return new_string
end

puts caesar_cipher("What a string!", 5)
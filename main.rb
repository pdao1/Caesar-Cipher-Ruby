def caesar_cipher(str, shift=1)
    alphabet = ("a".."z").to_a
    caesar = ""

    str.each_char do |letter|
      if letter == " "
        caesar += " "
      else
        old_index = alphabet.find_index(letter)
        new_index = ( old_index + shift ) % alphabet.count
        caesar += alphabet[new_index]
      end
    end 

    caesar
end

puts caesar_cipher("helloz", 5)
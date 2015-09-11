def caesar_cipher(input_string, shift_factor=1) 
  new_position = []
  string_position = input_string.unpack('C*')
  string_position.each do |value|
    case value
    when (97..122), (65..90)
      shifted_position = value + shift_factor

      if (shifted_position > 122) || (shifted_position > 90)
        shifted_position = shifted_position - 26 #looping the alphabets
        new_position << shifted_position
      else
        new_position << shifted_position
      end
    else
      new_position << value 
    end
  end
  new_position.pack('C*')
end

puts caesar_cipher("abcx ThZ!", 3)

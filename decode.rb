def decode_char(char)
  @morse = '.-', '-...',	'-.-.',	'-..',	'.',	'..-.',	'--.',	'....',	'..',	'.---',	'-.-',
           '.-..', '--',	'-.', '---',	'--.-',	'.--.',	'.-.',	'...',	'-', '..-',	'...-',
           '.--',	'-..-',	'-.--',	'--..'
  @alphabet = 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K',
              'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'
  index = @morse.find_index(char)
  @alphabet[index]
end

def decode_word(word)
  word_split = word.split
  array = word_split.map do |i|
    if i == '/'
      ' '
    else
      decode_char(i)
    end
  end
  array.join
end
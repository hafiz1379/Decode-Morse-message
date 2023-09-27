MORSE_CODE_DICT = {
  'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..', 'E' => '.', 'F' => '..-.',
  'G' => '--.', 'H' => '....', 'I' => '..', 'J' => '.---', 'K' => '-.-', 'L' => '.-..',
  'M' => '--', 'N' => '-.', 'O' => '---', 'P' => '.--.', 'Q' => '--.-', 'R' => '.-.',
  'S' => '...', 'T' => '-', 'U' => '..-', 'V' => '...-', 'W' => '.--', 'X' => '-..-',
  'Y' => '-.--', 'Z' => '--..',
  '0' => '-----', '1' => '.----', '2' => '..---', '3' => '...--', '4' => '....-',
  '5' => '.....', '6' => '-....', '7' => '--...', '8' => '---..', '9' => '----.',
  ' ' => ' ' # Space character
}.freeze

# Method to decode a single Morse code character
def decode_char(morse)
  MORSE_CODE_DICT.key(morse)
end

# Method to decode an entire word in Morse code
def decode_word(morse_word)
  morse_word.split.map { |morse_char| decode_char(morse_char) }.join
end

# Method to decode the entire message in Morse code
def decode_message(morse_message)
  morse_message.split('   ').map { |morse_word| decode_word(morse_word) }.join(' ')
end

morse_message = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
decoded_message = decode_message(morse_message)
puts decoded_message

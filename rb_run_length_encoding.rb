require 'byebug'
def encode string_encode
  string_decode = ""
  temp_letter = string_encode[i]
  count_letter = 1

  length_word = string_encode.length
  for i in (0..(length_word-1)) do
    if i == (length_word-1)
      status_last = temp_letter == string_encode[i]
      count_letter += 1 if status_last
      string_decode += "#{count_letter}#{temp_letter}"
      string_decode += "#{string_encode[i]}" unless status_last
    else
      if temp_letter == string_encode[i]
        count_letter += 1
      else
        string_decode += "#{count_letter}#{temp_letter}" if count_letter > 1
        string_decode += temp_letter if count_letter == 1
        count_letter = 1
      end
      temp_letter = string_encode[i]      
    end 
  end
  string_decode
end

def decode string
end

puts encode("ABC")
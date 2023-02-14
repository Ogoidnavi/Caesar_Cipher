def caesar_cipher(string, shift, cipher = '')
  string.each_char do |char|
    char_code = char.ord

    char_ascii = case char_code
    when 65..90 then
      if char.ord + shift > 90
        char.ord + shift - 26
      elsif char.ord + shift < 65
        char.ord + shift + 26
      else
        char.ord + shift
      end
    when 97..122 then
      if char.ord + shift > 122
        char.ord + shift - 26
      elsif char.ord + shift < 97
        char.ord + shift + 26
      else
        char.ord + shift
      end
    else
      char.ord
    end
  cipher += char_ascii.chr
  end
  p cipher
end

caesar_cipher("What a string!", -5)
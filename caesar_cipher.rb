def cipher(string,num)
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    array = Array.new(alphabet.split(""))
    answer = ""
    
    string.split("").each do |char|
      if "?.,! ".include?(char)
      answer << char
    else
      cipher_char = alphabet[(alphabet.index(char.downcase) + num) % alphabet.size]
      if char == char.upcase
        answer << cipher_char.upcase
      else
        answer << cipher_char
      end
    end
  end
    puts answer.strip
    
end

cipher("Many DiffFerent Letterzz!",6)

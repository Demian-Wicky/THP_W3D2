def caesar_cipher(string, k=0)
  k = k%26
  string = string.to_s
  bytes = string.bytes
  new_bytes = []
  bytes.each do |byte|
    if byte >= 65 && byte <= 90 # Majuscules
      new_byte = byte + k
      if new_byte > 90
        new_byte = new_byte - 26
        new_bytes << new_byte
      else
        new_bytes << new_byte
      end
    elsif byte >= 97 && byte <= 122 # Minuscules
      new_byte = byte + k
      if new_byte > 122
        new_byte = new_byte - 26
        new_bytes << new_byte
      else
        new_bytes << new_byte
      end
    else # Le reste
      new_bytes << byte
    end
  end
  (new_bytes.map { |byte| byte.chr }).join
end
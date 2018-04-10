def text_to_ascii(text) # On définie la méthode qui va crypter notre message
  text_ascii = text.chars.map(&:ord) # Ici notre message va être convertie en code ASCII non décalé

  return(text_ascii)
end

def shift(array, number) # 
  i = 0
  shifted = Array.new

  while i < array.size
    if array[i] >= 122 - number
      shifted[i] = array[i] + number - 25
    else
      shifted[i] = array[i] + number
    end
    i += 1
  end

  return(shifted)
end

def ascii_to_text(array)
  text = array.map { |x| x.chr }.join
  return(text)
end

def cesar(text, nbr)
  ascii_to_text(shift(text_to_ascii(text), nbr))
end

puts "Quel message voulez vous crypter (sans espaces) ?"
string = gets.chomp
puts "Choisisser le nombre de décalage dans votre code (Entre 1 et 24)."
code = gets.chomp.to_i
puts "Votre message codé est : " + cesar(string, code)
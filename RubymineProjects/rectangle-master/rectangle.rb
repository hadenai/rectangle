
puts "De quel longueur est largueur voulez vous votre rectangle ?"

x = gets.chomp.to_i
y = gets.chomp.to_i

def abscisse(x)
  abscisse = ["o", " ", " ", " ", "o"]

  abscisse.each_with_index do |letter, index|
    letter if index < x
  end
end

def ordonnée(y)
  ordonnée =  ["o", "-", "-", "-", "o"]

  ordonnée.each_with_index do |letter, index|
    letter if index < y
  end
end

def calculate_rectangle(x, y)

  for i in 0..x
    if i >= 1 && i < x
      puts abscisse(y)*" "
    else
      puts ordonnée(x)*" "
    end
  end
end

calculate_rectangle(x, y)

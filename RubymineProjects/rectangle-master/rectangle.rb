x_brut = 1
y_brut = 4

x = x_brut -1
y = y_brut -1


def abscisse(x)
  boum = 0
  abscisse = ["o", "-", "-", "o"]

  abscisse.each do |letter|
    letter if boum < x
    boum += 1
  end
end

def ordonnée(y)
  boum = 0
  ordonnée =  ["o", "-", "-", "-", "o"]
  ordonnée.each do |letter|
    letter if boum < y
    boum += 1
  end
end

def calculate_rectangle(x, y)

  for i in 0..x
    puts abscisse(x)*" "
  end

  for i in 0..y
    puts ordonnée(y)*" "
  end
end

calculate_rectangle(x, y)

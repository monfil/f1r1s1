def elephants_song(num)
  (1..num).each do |n|
    puts "#{n} elefante se columpiaba sobre la tela de una araña, como veía que resistía fueron a llamar a otro elefante."
  end
end

def bottles_song(num)
  num.downto(1) do |n|
    puts "#{n} bottles of beer"
  end
end

elephants_song(10)
bottles_song(10)
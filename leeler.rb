# Refactoriza para que solamente te quede un renglón elegante
def dummy_encrypt(string)
    string.reverse.swapcase.gsub(/[aeio]/,"*")
end

# Descompón el método en tres métodos nuevos para hacer más comprensible el código
# Lee el método y comprende que hace y que resultado regresa 

def max_letter_frequency_per_word(sentence)
    words_split = sentence.split
    longer_words = words_longer_than(words_split, 3)
    count_letter = letter_per_word(longer_words, "e")
    numbers_larger_than(count_letter)
end

def words_longer_than(array,num)
  array.select{|word| word.length > num}
end

def letter_per_word(array,letter)
  array.map{ |w| w.count(letter) }
end

def numbers_larger_than(num_array)
  num_array.max
end

# Estas son pruebas que no debes de modificar 
# Antes y después de modificar los métodos anteriores estas lineas deben de imprimir "true"
puts dummy_encrypt("EsteEsMiPassword") == "DROWSSApImS*ETS*"

puts max_letter_frequency_per_word("entero entrar envase enviar enzima equino equipo erario erguir eriaza eriazo erigir eringe eficientemente electroencefalografía") == 5
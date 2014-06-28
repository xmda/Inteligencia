a = [99.0,86.23,48.43,16.0,82.32,50.22,25.12,8.12,45.1]  #Será ordenado mediante quick sort.

b = {0 => 'hola'}

class Array
  def quick_sort                    # el métoodo quick_sort será el encargado de ordenar recursivamente el arreglo.
    return self if length <= 1      # si el tamaño del arreglo es menor o igual a 1 no hay nada que ordenar.
    pivote = self[length / 2]       # La elección del pivote en este caso, es el elemento al centro del arreglo.
    find_all { |i| i <  pivote }.quick_sort +   # se ordenan recursivamente todos los elementos más pequeños que el pivote
      find_all { |i| i == pivote } +            # más los elementos que son igual que el pivote
      find_all { |i| i >  pivote}.quick_sort    # y se ordenan recursivamente los elementos más grandes que el pivote
  end
end
@aa = []
puts @aa = a.quick_sort

puts b[0]

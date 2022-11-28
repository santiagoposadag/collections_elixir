defmodule Collections do
alias Inspect.MapSet

  """
  Recibir un input del usuario en fomrato string,
  agregarlo a una tupla y triplicarlo
  (es decir que aparezca tres veces en la tupla)
  """

  def working_with_tuples1 do
    palabra = IO.gets("inserte aqui la palabra a multiplicar ")
    tupla = Tuple.duplicate(palabra, 3)
    tupla
  end

  """
  Tomar una tupla que contenga un string en su primera posicion,
  agregarle mas valores, convertirla en un list y manipularla para que
  queden todas las posiciones en mayuscula,
  al final imprimir el resultado
  """

  def working_with_tuples2 do
    tupla = {"hola"}
    palabra = IO.gets("inserte aqui la palabra 1 a agregar ")
    tupla = Tuple.append(tupla, palabra)
    palabra = IO.gets("inserte aqui la palabra 2 a agregar ")
    tupla = Tuple.append(tupla, palabra)
    palabra = IO.gets("inserte aqui la palabra 3 a agregar ")
    tupla = Tuple.append(tupla, palabra)
    lista = Tuple.to_list(tupla)
    listUpper = Enum.map(lista, fn x -> String.upcase(x) end)
    listUpper
  end

  """
  Recibir 5 inputs del usuario y orgnaizarlo en un keyword list,
  al final imprimir el resultado
  """

  def working_with_keywordlist1 do
    cicle = [0, 1, 2, 3 ,4]
    listWithKeyAtoms = [:one, :two, :three, :four, :five, 1]
    wordsInList = Enum.map(cicle, fn _x -> IO.gets("ingrese la palabra ") end)
    keywordNew = Keyword
    .new(cicle, fn x -> {Enum.at(listWithKeyAtoms, x), Enum.at(wordsInList, x)} end)
    keywordNew
  end

  """
  Recibir 5 inputs del usuario orgnizarlos en una lista,
  transformar los elementos para que esten en mayuscula e
  imprimir el resultado.
  """

  def working_with_list1 do
    cicle = [0, 1, 2, 3 ,4]
    list = Enum.map(cicle, fn _x -> IO.gets("ingrese una palabra ") end)
    IO.puts("Esta es la lista que has ingresado")
    IO.write(list)
    listInUppercase = Enum.map(list, fn x -> String.upcase(x) end)
    IO.puts("Este es el resultado")
    listInUppercase
  end

  """
  Construir a mano dos listas que contengan elementos iguales,
  restarle a la primera lista los valores en comun de la segunda lista
  y por ultimo imprimir la cabeza y la cola de la primera lista
  """
  def working_with_list2 do
    lista1 = ["foo-", "barr-", "groo-", "rizz-", "malone-"]
    lista2 = ["ecto-", "foo-", "groo-"]
    result = lista1 -- lista2
    IO.puts("este es el resultado = #{result}")
    [head | tail] = result
    IO.puts("Esta es la cabeza = #{head}")
    IO.puts("Esta es la cola = #{tail}")
  end

  """
  Construye un mapa con todos sus valores numericos
  %{one: 1, two: 2},
  recorre el mapa y sumale 5 a cada uno de los valores, al final imprime el reultado
  """
  def working_with_map1 do
    map = %{one: 1, two: 3, three: 2, four: 5}
    mapResult = Enum.map(map, fn ({x, y}) -> {x,  y + 5}  end)
    mapResult
  end

  """
  Constrir un mapa, a partir de el contruir una lista solo con los valores
  e imprimir el resultado
  """
  def working_with_map2 do
    map = %{one: "santiago", two: "camilo", three: "juan", four: "pedro"}
    listResult = Enum.map(map, fn ({_x, y}) -> y  end)
    listResult
  end

  """
  Recibe tres palabras por consola, esto ubicalo en una lista,
  y por medio de el modulo Enum, transforma la lista para que cada palabra se repita 3 veces
  y que aparezca en un solo nivelm es decir, que no hayan listas anidadas
  """
  def working_with_list3 do
    cicle = [0, 1, 2]
    list = Enum.map(cicle, fn _x -> IO.gets("ingrese una palabra ") end)
    IO.puts("Esta es la lista que has ingresado")
    IO.write(list)
    result = Enum.map(list, fn x -> Enum.map(cicle, fn _y -> x end) end)
    result = List.flatten(result)
    result
  end

  """
  Crear una lista ascendente del 0 al 20 usando el rango como recurso,
  saltando de 3 en 3 e imprimir el resultado.
  """
  def working_with_range1 do
    result = Enum.to_list(0..20//3)
    result
  end

  """
  Cosntruir un rango de 0 a 10 saltando de 2 en 2,
  convertir a lista, sumarle 3 a cada vlor e
  imprimir el resultado
  """
  def working_with_stream1 do
    range = 0..10//2
    result = Enum.map(range, fn x -> x + 3 end)
    result
  end


end

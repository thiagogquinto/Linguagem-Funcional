list = [1, 2, 3, 4, 5]
list2 = [6, 2, 8, 9, 10]

defmodule ElementoExiste do
  def isElementInList(list, element) do
    if element in list do
      IO.puts "Elemento #{element} existe na lista"
   else
      IO.puts "Elemento #{element} não existe na lista"
    end
  end
end
ElementoExiste.isElementInList(list, 1)


defmodule TamanhoLista do
  def calcularTamanhoLista(list, cnt) do
    if list == [] do
      IO.puts "Tamanho da lista: #{cnt}"
    else
      calcularTamanhoLista(tl(list), cnt + 1)
    end
  end
end
TamanhoLista.calcularTamanhoLista(list, 0)


defmodule SomaElementosLista do
  def somaElementosLista(list, sum) do
    if list == [] do
      IO.puts "Soma dos elementos da lista: #{sum}"
    else
      somaElementosLista(tl(list), sum + hd(list))
    end
  end
end
SomaElementosLista.somaElementosLista(list, 0)


defmodule ProdutoElementosLista do
  def somaElementosLista(list, prod) do
    if list == [] do
      IO.puts "Produto dos elementos da lista: #{prod}"
    else
      somaElementosLista(tl(list), prod * hd(list))
    end
  end
end
ProdutoElementosLista.somaElementosLista(list, 1)


defmodule ListaReversa do
  def reverterLista(list, listReversa) do
    if list == [] do
      IO.inspect(listReversa, label: "Lista reversa")
    else
      last = List.last(list)
      list = List.delete_at(list, length(list) - 1)
      listReversa = listReversa ++ [last]
      reverterLista(list, listReversa)
    end
  end
end
ListaReversa.reverterLista(list, [])


defmodule IsListsEqual do
  def isListsEqual(list1, list2) do
    if list1 == list2 do
      IO.puts "Listas iguais"
    else
      IO.puts "Listas diferentes"
    end
  end
end
IsListsEqual.isListsEqual(list, list2)


defmodule ConcatenarLists do
  def concatenateLists(list1, list2) do
    IO.inspect(list1 ++ list2, label: "Lista concatenada")
  end
end
ConcatenarLists.concatenateLists(list, list2)


defmodule IntersecaoLists do
  def intersectionLists(list1, list2) do
    IO.inspect(list1 -- (list1 -- list2), label: "Lista interseção")
  end
end
IntersecaoLists.intersectionLists(list, list2)

defmodule OrdenarLista do
  def quickSort(lista) do
    if lista == [] do
      []
    else if length(lista) == 1 do
      lista
    else
      head = Enum.at(lista, 0)
      tail = Enum.drop(lista, 1)
      left = Enum.filter(tail, fn(x) -> x < head end)
      right = Enum.filter(tail, fn(x) -> x >= head end)
      ordenada = quickSort(left) ++ [head] ++ quickSort(right)
      ordenada
      end
    end
  end
end
lista = [5, 2, 4, 6, 1, 3, 7, 9, 8]
ordenada = OrdenarLista.quickSort(lista)
IO.inspect(ordenada, label: "Lista ordenada por QuickSort")

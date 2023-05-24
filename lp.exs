list = [1, 2, 3, 4, 5]
list2 = [6, 7, 8, 9, 10]

defmodule ElementoExiste do
  def isElementInList(list, element) do
    if list == [] do
      IO.puts "Elemento #{element} não existe na lista"
    else if hd(list) == element do
      IO.puts "Elemento #{element} existe na lista"
      list
    else
      isElementInList(tl(list), element)
      end
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
  def multiplicaElementosLista(list, prod, semElemento) do
    if list == [] && semElemento == true do
      0
    else if list == [] && semElemento == false do
      prod
    else
      multiplicaElementosLista(tl(list), prod * hd(list), false)
      end
    end
  end
end
produto = ProdutoElementosLista.multiplicaElementosLista(list, 1, true)
IO.puts "Produto dos elementos da lista: #{produto}"


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
    if list1 == [] && list2 == [] do
      IO.puts "Listas iguais"
    else if hd(list1) == hd(list2) do
      isListsEqual(tl(list1), tl(list2))
    else
      IO.puts "Listas diferentes"
      end
    end
  end
end
IsListsEqual.isListsEqual(list, list2)


defmodule ConcatenarLists do
  def concatenateLists(list1, list2) do
    if list2 == [] do
      IO.inspect(list1, label: "Lista concatenada")
    else
      concatenateLists(list1 ++ [hd(list2)], tl(list2))
    end
  end
end
ConcatenarLists.concatenateLists(list, list2)


defmodule IntersecaoLists do
  def contains(list1, element) do
    if list1 == [] do
      false
    else if hd(list1) == element do
      true
    else
      contains(tl(list1), element)
      end
    end
  end

  def intersectionLists(list1, list2, intersect) do
    if list1 == [] do
      intersect
    else if contains(list2, hd(list1)) do
      intersectionLists(tl(list1), list2, intersect ++ [hd(list1)])
    else
      intersectionLists(tl(list1), list2, intersect)
      end
    end
  end
end
intersecao = IntersecaoLists.intersectionLists(list, list2, [])
IO.inspect(intersecao, label: "Interseção das listas")


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

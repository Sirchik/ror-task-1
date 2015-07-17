require 'mathn'

class RorTask1

  #Напишите программу, которая для заданного натурального числа num определяет
  #количество вхождений числа 3 в разложение заданного числа на простые сомножители.
  def how_many_threes num
    #код писать сюда
    res = 0
    num.prime_division.each{|arr| res = arr[1] if arr[0] == 3}
    res
  end

  #Дан текст. Определите максимальное из имеющихся в нем чисел.
  def max_number_in_text text
    #код писать сюда
    arr = tex.split
    arr.find_all{|el| Float(el) != nil rescue false}.max{|a,b| a.to_f <=> b.to_f}
  end

  #Дан целочисленный массив. Необходимо вывести вначале его элементы с четными 
  #индексами, а затем - с нечетными.
  def even_odd_elements arr
    #код писать сюда
    arr.partition.each_with_index{|el, i| i.odd?}
  end

  #Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам последний 
  #элемент. Первый и последний элементы массива не изменять.
  def even_elements_addition arr
    #код писать сюда
    res = []
    arr.each_with_index{|item, index| res << (item.odd? && index != 0 && index != arr.size - 1 ? item + arr[-1] : item)}
    res
  end

  #Дан целочисленный массив, содержащий по крайней мере два нуля. Вывести сумму чисел 
  #из данного массива, расположенных между первыми двумя нулями.
  def sum_between_zeros arr
    #код писать сюда
    arr.drop(arr.index(0) + 1).take_while{|e| e != 0}.inject(0){|res, el| res + el}
  end

end

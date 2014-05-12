require 'rubygems'
require 'rspec'


module Sort

  def self.sort(array)
    array.sort
  end

##########

#selection_sort: finding the smallest
#and adding it to the beginning of the array and so on

  def self.selection_sort(array)
    for i in 0..array.size-1
      shift_nth_smallest(array, i)
    end
    array
  end

  def self.shift_nth_smallest(array, i)
    min=nil
    min_index = nil
    n=i
    for i in n..array.size-1 #-1 to get last element's index
      if min.nil? || min>array[i]
        min=array[i]
        min_index=i
      end
    end

    array[min_index]=array[n]
    array[n] = min
  end

##########

#merge: take two sorted arrays and merging them into one assorted array
  def self.merge(arr1,arr2)
    i = j = 0
    result = []

    while i < arr1.length && j < arr2.length
      if arr1[i] > arr2[j]
        result.push(arr2[j])
        j+=1
      else
        result.push(arr1[i])
        i+=1
      end
    end

    if arr1.length > i
      result.concat(arr1[i..-1])
    else
      result.concat(arr2[j..-1])
    end
  end

#merge_sort:

  def self.merge_sort(array)
    if array.length <=1
      return array
    end

    a = merge_sort(array[0..array.length/2-1])
    b = merge_sort(array[array.length/2..-1])
    merge(a,b)

  end

##########
end

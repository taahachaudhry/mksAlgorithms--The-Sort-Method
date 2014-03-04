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
  end

end

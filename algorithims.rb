def dumb_my_min(list)
  list.each do |ele1|
    return ele1 if list.all? { |ele2| ele1 <= ele2 }
  end
end

def smarter_my_min(list)
  smallest = list[0]
  list.each do |ele|
    smallest = ele if ele < smallest
  end
  smallest
end

def dum_largest_contiguous_subsum(list)
  arr_of_subarrs = []
  (0...list.length).each do |i|
    (i...list.length).each do |j|
      arr_of_subarrs << list[i..j]
    end
  end
  arr_of_subarrs.map(&:sum).max
end

# def smart_largest_contiguous_subsum(list)
#   larget_sum = list[0]
#   (0...list.length).each do |i|
#     (i...list.length).each do |j|
#       larget_sum = list[i..j].sum if list[i..j].sum > larget_sum
#     end
#   end
#   larget_sum
# end

def smart_largest_contiguous_subsum(list)
  larget_sum = list[0]
  i = 1
  while i < list.length
    if larget_sum > 0
      if larget_sum + list[i] > 0
        larget_sum += list[i]
      else
        larget_sum = list[i+1]
        i += 1
      end
    else
      larget_sum = list[i] if list[i] > larget_sum
    end
    i += 1
  end
  larget_sum
end

if __FILE__ == $PROGRAM_NAME
  list1 = [2, 3, -6, 7, -6, 7]
  list2 = [-5, -1, -3]
  p smart_largest_contiguous_subsum(list1)
  p smart_largest_contiguous_subsum(list2)
  # p smarter_my_min(list)
end



def bad_two_sum?(arr, tar)
  arr.each do |el1|
    arr.each do |el2|
      return true if el1 + el2 == tar && el1 != el2
    end
  end
  false
end


arr = [9,11,12,0, 1, 5, 7]
# p bad_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10) # => should be false

# def okay_two_sum?(arr, tar)
#   arr.each do |ele|
#     new_tar = tar - arr.pop
#     return true if b_search(arr, new_tar)
#   end
#   false
# end

# def b_search(arr, tar)
#   return false if arr.empty?
#   mid = arr.length/2
#   case arr[mid] <=> tar
#   when 0
#     return true
#   when 1
#     left = b_search(arr.take(mid), tar)
#   else
#     right = b_search(arr.drop(mid + 1), tar)
#   end
#   false
# end

def okay_two_sum?(arr, tar)
  arr = arr.sort
  until arr.length < 2
    combo = arr.first + arr.last
    case combo <=> tar
    when 0 
      return true
    when 1
      arr.pop
    else
      arr.shift
    end
  end
  false
end

# p b_search(arr, 20)

p okay_two_sum?(arr, 6) # => should be true
p okay_two_sum?(arr, 10) # => should be false

def two_sum?(arr, tar)
  hash = {}
  arr.each do |key|
    val = tar - key
    return true if hash[val] 
    hash[key] = val
  end
  false
end

# p two_sum?(arr, 6) # => should be true
# p two_sum?(arr, 10) # => should be false
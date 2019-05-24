def first_anagram?(str1, str2)
  all_possible = str1.split('').permutation.to_a
  all_possible.include?(str2.split(''))
end

# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")    #=> true

# def rec_perm(arr)
#   return [arr] if arr.length <= 1
#   first = arr.shift
#   p rec = rec_perm(arr)
#   results = []
#   rec.each do |sub|
#     i = 0
#     while i <= sub.length
#       results << sub.dup.insert(i,first)
#       i += 1
#     end
#   end
#   results
# end

# p rec_perm([1,2,3])\\

def second_anagram?(str1, str2)
  str2Arr = str2.split('')
  str1.each_char do |char|
    idx = str2Arr.find_index(char)
    str2Arr.delete_at(idx) unless idx.nil?
  end
  str2Arr.empty?
end

# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("elvis", "lives")    #=> true

def third_anagram?(str1, str2)
  str1.split('').sort == str2.split('').sort
end

# p third_anagram?("gizmo", "sally")    #=> false
# p third_anagram?("elvis", "lives")    #=> true

def fourth_anagram?(str1, str2)
  counts = Hash.new(0)
  str1.each_char { |char| counts[char] += 1 }
  str2.each_char { |char| counts[char] -= 1 }
  counts.values.all? { |v| v == 0 }
end

p fourth_anagram?("gizmo", "sally")    #=> false
p fourth_anagram?("elvis", "lives")    #=> true
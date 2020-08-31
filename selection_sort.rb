# selection sort implementation in ruby
# sorts an array by finding the small element from unsorted part and putting it at the start of array
# using ... exclude the end value

def selection_sort(arr)
  n = arr.length
  (0...n).each do |i|
    min_index = i
    (i...n).each do |j|
      next if arr[min_index] < arr[j]

      arr[min_index], arr[j] = arr[j], arr[min_index]
    end
  end
  arr
end

arr = [5, 7, 1, 3, 8, 4, 2]
p selection_sort(arr)

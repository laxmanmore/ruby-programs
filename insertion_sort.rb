# insertion sort implementation in ruby
# using ... exclude the end value

def insertion_sort(arr)
  n = arr.length
  (1...n).each do |i|
    curr_val = arr[i]
    curr_index = i
    while curr_index.positive? && arr[curr_index - 1] > curr_val
      tmp = arr[curr_index - 1]
      arr[curr_index - 1] = curr_val
      arr[curr_index] = tmp
      curr_index -= 1
    end
  end
  arr
end

arr = [5, 7, 1, 3, 8, 4, 2]
p insertion_sort(arr)

# bubble sort implementation in ruby
# swap the adjacent element if they are in wrong order
# using ... exclude the end value

def bubble_sort(arr)
  n = arr.length
  (0...n).each do |i|
    flag = 0
    (0...(n - i)).each do |j|
      next if arr[j + 1].nil?
      next if arr[j] < arr[j + 1]

      flag = 1
      arr[j], arr[j + 1] = arr[j + 1], arr[j]
    end
    break if flag.zero?
  end
  arr
end

arr = [5, 7, 1, 3, 8, 4, 2]
p bubble_sort(arr)

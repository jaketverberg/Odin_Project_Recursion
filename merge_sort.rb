def merge_sort(arr)
  return arr if arr.length < 2

  left, right = arr.each_slice( (arr.size/2.0).round ).to_a
  left_side = merge_sort(left)
  right_side = merge_sort(right)

  sorted = []
  until left_side.empty? || right_side.empty?
    left_side.first <= right_side.first ? sorted << left_side.shift : sorted << right_side.shift
  end

  sorted + left_side + right_side
end

puts "#{merge_sort([66, 45, 32, 48, 18, 4, 6, 22, 94, 36])}"

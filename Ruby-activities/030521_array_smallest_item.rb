arr = [34, 15, 88, 21]
# arr = [34, -345, -1, 100]

smallest = arr[0]
arr.each {|val| smallest  = val if val < smallest}
puts smallest
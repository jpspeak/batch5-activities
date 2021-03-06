# a = [2, 1, 3, 5, 3, 2]
# a = [2, 2]
a = [2, 4, 3, 5, 1]

def first_duplicate(a)
    memo = []
    a.each do |val|
        return val if memo.include?(val)
        memo << val
    end
    -1
end

puts first_duplicate(a)
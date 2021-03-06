s = "abacabad"
# s = "abacabaabacaba"

def first_not_repeating_character(s)
    s.chars.each_with_index {|val, index|
        memo = s.chars
        memo.delete_at(index)
        return val if !(memo.include?(val))
    }
    "_"
end

print first_not_repeating_character(s)
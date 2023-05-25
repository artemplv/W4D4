



def first_anagram?(str1,str2)
    perm_arr = str1.split("").permutation
    perm_arr.to_a.any? {|ele| ele.join("") == str2}

end 




def second_anagram?(str1,str2)
    if str1.length != str2.length
        return false 
    end 
    str1 = str1.split("")
    str2 = str2.split("")
    str1.each_with_index do |char,idx|
        if str2.include?(char)
            found = str2.index(char)
            str2.delete_at(found)
        else 
            return false 
        end 
    end
    return true 
end 

def third_anagram?(str1, str2)
    str1 = str1.split('').sort
    str2 = str2.split('').sort

    str1 == str2
end


def fourth_anagram?(str1, str2)
    hash = Hash.new(0)

    str1.each_char do |char|
        hash[char] += 1
    end
    str2.each_char do |char|
        hash[char] -= 1
    end

    hash.empty?
end






p third_anagram?("abc","cba")
p third_anagram?("abcdef","cbasds")
p third_anagram?("racecar","rraacce")




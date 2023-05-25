



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







p second_anagram?("abc","cba")
p second_anagram?("abcdef","cbasds")
p second_anagram?("racecar","rraacce")




def union_strings_sorted(str1, str2)
  return str1 if str2.nil? || str2.empty?
  return str2 if str1.nil? || str1.empty?

  (0..str2.size - 1).each do |str2_index|
    flag = false
    char = str2[str2_index]
    (0..str1.size - 1).each do |str1_index|
      if char < str1[str1_index]
        str1.insert(index, char)
        flag = true
        break
      end
    end

    # flag为false说明str2余下的字符均比str1中的大，直接追加即可
    if !flag
      str1 = str1 + str2[str2_index..-1]
    end
  end

  return str1
end

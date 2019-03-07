def repleace_blank_of_string(string)
  # array string 都有empty?方法
  if string.nil? || string.empty?
    return false
  end

  string.gsub!(" ", "%20")
end

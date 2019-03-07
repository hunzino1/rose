def find_target_in_arrays(arrays, target)
  if arrays.nil? || arrays.empty?
    return false
  end

  arrays.each do |array|
    if !array.empty? && array.include?(target)
      return true
    end
  end

  return false
end

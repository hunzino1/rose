#https://leetcode-cn.com/problems/longest-palindromic-substring/submissions/
#
#
def longest_palindrome(s)
  return "" if s.nil? || s.empty?

  len = s.size
  return s if len == 1 || s.chars.uniq.size == 1

  dp = Array.new(len){Array.new(len, false)}

  max_len = 1 # 保存最长回文子串长度
  start = 0 # 保存最长回文子串起点

  0.upto(len - 1).each do |i|
    0.upto(i).each do |j|
      if (i - j < 2)
        # 从小到大，所以dp[j][i]
        dp[j][i] = true if (s[i] == s[j])
      else
        dp[j][i] = (s[i] == s[j] && dp[j + 1][i - 1])
      end

      if dp[j][i] && max_len < (i - j + 1)
        max_len = i - j + 1
        start = j
      end
    end
  end
  s[start...(start + max_len)]
end

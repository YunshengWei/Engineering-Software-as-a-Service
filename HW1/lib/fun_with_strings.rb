module FunWithStrings
  def palindrome?
    str_gsub = self.gsub(/\W/, "").downcase
    return str_gsub == str_gsub.reverse
  end

  def count_words
    hash = Hash.new(0)
    self.downcase.split(/\W/).reject {|str| str.empty?}.each do |str|
      hash[str] += 1
    end
    return hash
  end

  def anagram_groups
    hash = Hash.new()
    self.split(" ").each do |str|
      tmp_str = str.downcase.split("").sort.join()
      hash[tmp_str] ||= []
      hash[tmp_str] << str
    end
    return hash.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant?(s)
  return false if s.empty?
  s = s.capitalize
  return false if s[0] < 'A' || s[0] > 'Z'
  return !s.start_with?("A", "E", "I", "O", "U")
end

def binary_multiple_of_4?(s)
  s.each_char do |c|
    return false if c != '1' && c != '0'
  end
  return true if s == '0'
  return s.end_with?('00')
end

raise 'hello(\'James\') != "Hello, James"' unless hello('James') == "Hello, James"
raise 'starts_with_consonant?("bdhjks") != true' unless starts_with_consonant?("bdhjks") == true
raise 'starts_with_consonant?("") != false' unless starts_with_consonant?("") == false
raise 'starts_with_consonant?(" bdhjks") != false' unless starts_with_consonant?(" bdhjks") == false
raise 'binary_multiple_of_4?("10100") != true' unless binary_multiple_of_4?("10100") == true
raise 'binary_multiple_of_4?("a10100") != false' unless binary_multiple_of_4?("a10100") == false

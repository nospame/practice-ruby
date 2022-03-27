require 'benchmark'

def find_longest_substring(string1, string2)
  i = 0
  long_substring = ""
  while i < string1.length
    j = i
    while j < string1.length
      substring = string1[i..j]
      if !string2.include?(substring)
        break
      elsif substring.length > long_substring.length
        long_substring = substring
      end
      j += 1
    end
    i += 1
  end
  return long_substring
end

time = Benchmark.measure{
p find_longest_substring("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
}
puts time.real

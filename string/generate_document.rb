# Given Inputs as document and characters string.
# Need to check we can able generate the document form the characters string
# solution 1 the naive implementation is iterate through each char in the document
# count the char frequency in document and characters
# if the doc_frequency is > char_frequecny return false
# O(n * (m+n)). where n is length of document and m is the len of characters

def soultion1(document, chars)
  document.each_char do |char|
    doc_frequency = calculate_frequency(document, char)
    char_frequecny = calculate_frequency(chars, char)
    return false if doc_frequency > char_frequecny
  end
  true
end

def calculate_frequency(characters, char)
  frequency = 0
  characters.each_char do |i|
    frequency += 1 if i == char
  end
  return frequency
end

p soultion1("hello world","dlorwol lhe")

#Soultion 2
# iterate throught the characters(availble chars),count the char frequency of the characters first
# and store those values in results hash
# Iterate through the document, decrement the count of results hash value for the char
# return false if the hash_value for char is equal to 0 or char not present in the results
# which means available character are less then the document chars
# O(n + m) time complex and space O(u) u is the unique characters in the string

def solution2(document, characters)
  results = {}

  characters.each_char do |i|
    results[i] = 0 if results[i].nil?
    results[i] += 1
  end
  document.each_char do |i|
    return false if results[i].nil? || results[i] == 0

    results[i] -= 1
  end
  return true
end

p solution2("hello world","dlorwol lhe")

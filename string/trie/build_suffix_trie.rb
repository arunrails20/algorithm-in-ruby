# suffifx trie helpe for pattern matching, finding distinct substrings in given
# string

class SuffifxTrie
    attr_accessor :root, :tail_value

    def initialize(str)
        @root = {}
        @tail_value = "*"
        build str
    end

    def build(str)
        (0...str.length).each do |i|
            node = self.root
            (i...str.length).each do |j|
                char = str[j]
                unless node[char]
                    node[char] = {}
                end
                node = node[char]
            end
            node[tail_value] = true
        end
    end

    def search(str)
        node = @root
        str.each_char do |char|
            return false unless node[char]
            node = node[char]
        end
        node[self.tail_value] == true
    end
end


obj = SuffifxTrie.new("babc")
p obj

puts obj.search("abc")
puts obj.search("a")
puts obj.search("bc")
puts obj.search("k")
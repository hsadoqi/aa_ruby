require 'pry'

def factors(num)
    (1..num).select {|n| num % n == 0}
end 

def subwords(word, dictionary)
    dictionary.select {|w| word.include? w}
end 

def doubler(arr)
    arr.map {|n| n * 2}
end

class Array 
    def bubble_sort!(&prc)
        return self if length < 2

        prc ||= Proc.new{|a, b| a <=> b}

        sorted = false 
    
        while !sorted
            sorted = true
            (0...self.length - 1).each do |i|
                if prc.call(self[i], self[i + 1]) == 1 
                    self[i], self[i+1] = self[i+1], self[i]
                    sorted = false 
                end
            end 
        end
        self
    end 

    def bubble_sort(&prc)
        self.dup.bubble_sort!(&prc)
        self
    end 

end 
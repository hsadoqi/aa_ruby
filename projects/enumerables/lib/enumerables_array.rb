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

    def my_each(&prc)
        self.length.times do |i|
            prc.call(self[i])
        end 

        self
    end 

    def my_map(&prc)
        changed_arr = []
        self.length.times do |i|
            changed_arr << prc.call(self[i])
        end 
        changed_arr
    end 

    def my_select(&prc)
        selected_arr = []

        self.length.times do |i|
            selected_arr << self[i] if prc.call(self[i])
        end 
        selected_arr
    end 
    
end 
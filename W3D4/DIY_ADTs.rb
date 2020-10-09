class Stack
    attr_reader :lifo    
    def initialize
        @lifo = []
    end

    def push(el)
        lifo << el
    end

    def pop
        lifo.pop
    end

    def peek
        lift[-1]
    end
end


class Queue
    attr_reader :fifo
    def initialize
        @fifo = []
    end

    def push(el)
        fifo << el
    end

    def pop
        fifo.shift
    end

    def peek
        fifo[0]
    end
end

class Map
    attr_reader :nested

    def initialize
        nested = []
    end

    def set(key, value)

        index = 0
        nested.each_with_index do |ele, i|
            if ele == key
                index += i
            end
        end

        if index != 0
            nested[index][1] = value
        else
            nested.push([key, value])
        end
        value
    end

    def get(key)
        nested.each do |i|
            if pair[0] == key 
                return pair[1] 
            end
        end
        nil
    end

    def delete(key)
        value = get(key)
        nested.reject! { |pair| pair[0] == key }
        value
    end

    def show
        nested.each do |el|
            el
        end
    end
    
end

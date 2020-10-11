class GraphNode
    attr_accessor :value, :neighbor

    def initialize(value)
        @value = value
        @neighbor = []
    end

    def bfs(starting_node, target_value)
        queue = []
        visited = Set.new()
        
        until queue.empty?
            cur_node = queue.shift
            unless visited.include?(cur_node)
                return cur_node if cur_node.value == target_value
                visited.add(cur_node)
                queue += cur_node.neighbor
            end
        end
        nil
    end    

end
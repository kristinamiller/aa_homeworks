class GraphNode

  attr_accessor :value, :neighbors 

  def initialize(value)
    @value = value
    @neighbors = []
  end

  def bfs(starting_node, target_value)
    return self if self.value == target_value
    queue = [starting_node]
    visited = Set.new()
    while !queue.empty?
      curr_node = queue.shift 
      if !visited.include?(curr_node)
        return curr_node.value if curr_node.value == target_value
        visited << curr_node
        queue += curr_node.neighbors
      end

    end
    return nil
  end


end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]
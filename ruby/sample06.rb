# 2日目　試してみよう-2
class Tree
  attr_accessor :children, :node_name
  def initialize(name, children=[])
    @children = children
    @node_name = name
  end
  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all &block}
  end
  def visit(&block)
    block.call self
  end
end

ruby_tree = Tree.new("Ruby", [Tree.new("Reia"), Tree.new("MacRuby")])

p "Visiting a node"
ruby_tree.visit {|node| p node.node_name}
p

p "Visiting entire tree"
ruby_tree.visit_all {|node| p node.node_name}

p

ruby_tree_custom = Tree.new("Ruby", [Tree.new({'grandpa' => {'dad' => {'child1' => [], 'child2' => []}}})])
ruby_tree_custom = Tree.new("Ruby", [Tree.new('grandpa', [Tree.new('dad', [Tree.new('child1'), Tree.new('child2')])])])
p "Visiting custom tree"
ruby_tree_custom.visit_all {|node| p node.node_name}

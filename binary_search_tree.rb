require "pry"

class BinarySearchTree
    attr_accessor :root
    # sets initial root to nil
  	def initialize
  		@root = nil
  	end
# every time a new value is inserted it check if it nil is true for root.
# if it is then it created a Node.new
#  else it used the insert method to add the value.
    def insert(value)
      @root.nil? ? @root = Node.new(value) : @root.insert(value)
    end
    # check the value given and the location of the node.
    # using recursion for both search and insert it continues calling the method until it has transeversed through the tree or returns the node. 
    def tree_search( value, node=@root )
      return nil if node.nil?
      if value < node.key
        tree_search( value, node.left )
      elsif value > node.key
        tree_search( value, node.right )
      else
        return node
      end
    end

end

class Node
  attr_accessor :left, :right
  attr_reader :key

  def initialize(key = nil)
    @key = key
    @left = nil
    @right= nil
  end

  def insert(new_value)
    puts "*****************************"
    puts "what is key #{@key}"
    # puts "what is node.value #{node.value}"
    puts "what is value #{new_value}"
    puts "*****************************"
    if new_value <= @key
      @left.nil? ? @left = Node.new(new_value) : @left.insert(new_value)
    elsif new_value > @key
      @right.nil? ? @right = Node.new( new_value ) : @right.insert(new_value)
    end

  end



end


start = BinarySearchTree.new
start.insert(25)
start.insert(33)
start.insert(44)
start.insert(10)
puts start.inspect
treeSearch = start.tree_search(10)

# first_find = start.tree_search(10)
# puts "what is search #{first_find}"
puts "*****************************"

puts "what is #{treeSearch}"
binding.pry
#def search_tree(value, node = @root)
#   binding.pry
#   return nil if node.nil?
#   return node if value == node.key
#   node.key < value ? search_tree(value, node.right) : search_tree(value, node.left)
# end
# four = BinarySearchTree::Node.new(25)
# four = BinarySearchTree::Node.new(40)
# four = BinarySearchTree::Node.new(33)

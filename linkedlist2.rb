class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end


def reverse_list(list, previous=nil)              
  if list                                     #to change the value of the next_node while traversing(iterating over) the list..start with the head of the list (37)
    next_node = list.next_node                #go to the next node (99) and set equal to that previous node and continue until nil then reverse the list sequentially from  
    list.next_node = previous                 #stored node information...to illustrate this...
    reverse_list(next_node, list)             #each node (37,99,12) having two fields--[value@37|next]<--pointer-->[value@99|next]<--pointer-->[value@12|next]<--pointer-->nil        
  end                                         #intially accessing each of these nodes from the head node(37) until the tail node(12)/nil in sequential order 
end                                           #all while storing the iformation allows for the reverse_list method to occur and set the previous tail node as the current/new head node

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

#node1.next_node = node3 

print_values(node3)                         #prints initial list 12-->99-->37-->nil

puts "-------"

revlist = reverse_list(node3)

#print_values(node3)                         

print_values(node1)                         #prints (after) reverse list 37-->99-->12-->nil
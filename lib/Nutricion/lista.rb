Node = Struct.new(:value, :next, :prev)

class Lista
	attr_reader :head, :tail
	def initialize()
		@head = @tail = nil
	end

	def addt(value)		#Agrega por la cola  []->[]->[] 
		if @head == nil
			@head = Node.new(value, nil, nil)
			@tail = @head
		else
			node = Node.new(value, nil, @tail)
			@tail.next = node
			@tail = node 	
		end	
	end
end

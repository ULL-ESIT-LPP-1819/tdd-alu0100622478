Node = Struct.new(:value, :next, :prev)

class Lista
	include Enumerable
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

	def poph()
		if @head == nil
			@head =nil
			@tail = nil
			return nil
		else 
			pop = @head
			@head = @head.next
			return pop.value
		end
	end

	def each ()
		node = Node.new(nil,nil,nil)
		node = @head

		while !(node.nil?)
			yield node.value
			node = node.next
		end
	end
end

# @author Edgar Mesa Santana
Node = Struct.new(:value, :next, :prev)

# Clase que define una lista doblemente enlazada
# @author Edgar Mesa Santana
class Lista
	include Enumerable
	attr_reader :head, :tail
	def initialize()
		@head = @tail = nil
	end
	
	# Método para añadir un elemento de la lista (Por detrás)
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
	
	# Método para sacar un elemento de la lista (Por delante)
	# @return [nodo]
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
	
	# Método para la iteración de la lista
	def each ()
		node = Node.new(nil,nil,nil)
		node = @head

		while !(node.nil?)
			yield node.value
			node = node.next
		end
	end
end

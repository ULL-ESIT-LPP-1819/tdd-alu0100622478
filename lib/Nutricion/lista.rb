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
	#Método para realizar poph() hasta que no quede nada en la lista
	# @return [nodo]
	def poph_non_stop()
		aux = []
		while @head != nil
			aux << self.poph
		end
		aux
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

	def byfor()
		aux_a = self.poph_non_stop
		n = aux_a.size
		for i in 1..n
			for j in 1..n-i
				if aux_a[j-1] >= aux_a[j]
					aux = aux_a[j-1]
					aux_a[j-1] = aux_a[j]
					aux_a[j] = aux
				end
			end
		end
		aux_a
	end
end

Node = Struct.new(:value, :next, :prev)

class Lista
	attr_reader :head, :tail
	def initialize()
		@head = @tail = nil
	end
end

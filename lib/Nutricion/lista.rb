Node = Struct.new(:value, :next, :prev)

class Lista
	attr_reader :head
	def initialize()
		@head = nil
	end
end

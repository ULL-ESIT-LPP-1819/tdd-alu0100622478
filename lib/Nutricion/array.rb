class Array
	def byfor()
		aux_a = self
		n = (aux_a.size)
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

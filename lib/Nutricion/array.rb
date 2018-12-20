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

	def byeach()
		aux_a = self
		loop until aux_a.each_cons(2).with_index.none?{|(x,y),i| aux_a[i],aux_a[i+1] = y,x if x > y}
		aux_a
	end
end

class SubArray < Array

	def injecting(arg = nil)
		total = arg || self.first
		
		arr = if total == self.first
						self.slice(1, self.length)
					elsif total == arg
						self
					end

		i = 0
		while i < arr.length
			element = arr[i]
			total = yield total, element
			i += 1
		end
		return total
	end

end
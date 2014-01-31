class SubArray < Array

	def injecting(arg = nil)
		t = arg || self.first
		
		arr = if arg
			self
		elsif self.first
			self.slice(1, self.length)
		end

		i = 0
		while i < arr.length
			v = arr[i]
			t = yield t, v
			i += 1
		end
		return t
	end

end
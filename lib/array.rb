class SubArray < Array

	def injecting(arg = self[0])
		i = 0
		t = arg
		while i < self.length
			v = self[i]
			t = yield t, v
			i += 1
		end
		return t
	end

end
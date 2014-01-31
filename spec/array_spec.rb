require_relative '../lib/array'

describe SubArray do 

	let(:subarray) {SubArray.new}

	it "should return a sum of 4 elements in an array" do
		subarray.concat([1, 2, 3, 4])
		expect(subarray.injecting(0){|sum, v| sum + v}).to eq(10)
	end

	it "should return a product of 4 elements in an array" do
		subarray.concat([1, 2, 3, 4])
		expect(subarray.injecting{|sum, x| sum * x}).to eq(24)
	end

	it "playing with words" do 
		subarray.concat(["cat", "sheep", "bear"])
		expect(subarray.injecting{|m, w| m.length > w.length ? m : w}).to eq("sheep")
	end

end
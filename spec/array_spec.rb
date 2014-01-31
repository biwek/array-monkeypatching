require_relative '../lib/array'

describe SubArray do 

	let(:subarray) {SubArray.new}

	it "should return a sum of 4 elements in an array" do
		subarray.concat([1, 2, 3, 4])
		expect(subarray.injecting{|sum, v| sum + v}).to eq(10)
	end

	it "should return a sum of 4 elements in an array and an argument provided" do
		subarray.concat([1, 2, 3, 4])
		expect(subarray.injecting(5){|sum, v| sum + v}).to eq(15)
	end

	it "should return a product of 3 elements in an array" do
		subarray.concat([2, 3, 4])
		expect(subarray.injecting{|product, v| product * v}).to eq(24)
	end

	it "should return a product of 3 elements in an array and an argument provided" do
		subarray.concat([2, 3, 4])
		expect(subarray.injecting(5){|product, v| product * v}).to eq(120)
	end

	it "should return longest word in the array" do 
		subarray.concat(["cat", "sheep", "bear"])
		expect(subarray.injecting{|m, w| m.length > w.length ? m : w}).to eq("sheep")
	end

end
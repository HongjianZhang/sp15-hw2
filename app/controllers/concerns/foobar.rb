class Foobar
	def self.baz(lst)
		result = []
		for x in lst
			result.push(x.to_i + 2)
		end
		result = result.select {|x| x%2==0}
		result = result.uniq
		result = result.delete_if{|num| num > 10}
		result.inject(:+)
	end
end

def add(n1,n2)
	n1 + n2;
end

def subtract(n1,n2)
	n1 - n2;
end

def sum (narray)
	total = 0;
	unless (narray.empty?)
		narray.each do |num|
		total += num;
		end
	end
	total;
end
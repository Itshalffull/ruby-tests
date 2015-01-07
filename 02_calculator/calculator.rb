def add(n1,n2)
	n1 + n2;
end

def subtract(n1,n2)
	n1 - n2;
end

def sum (narray)
	total = 0;
	unless (narray.empty?)
		narray.each_with_index do |num,ind|
		total += num;
		end
	end
	total;
end

def multiply(narray)
	total = 1;
	narray.each do |num|
		total *= num;
		end
	total;
end

def power(n1,n2)
	n1 ** n2
end
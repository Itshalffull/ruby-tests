def echo(s)
s;
end

def shout(s)
s.to_s.upcase;
end

def repeat(s, n = 2)
	string = (s.to_s + " ") * n;
	return string[0, string.length - 1]
end

def start_of_word(s,n)
	s.to_s[0,n]
end

def first_word(s)
	s.split[0]
end

def titleize(s)
	phrase = "";
	array = s.split()
	array.each_with_index do |word, index|
		unless (word == "the" || word == "and" || word == "over") && (index != 0)
			first_letter = word[0].upcase
			next_letters = word[1, s.length]
			phrase += first_letter + next_letters + " "
		else
			phrase += word + " ";
		end
	end

	return phrase[0, phrase.length - 1]
end

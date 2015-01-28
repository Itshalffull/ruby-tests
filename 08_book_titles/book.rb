class Book
	def initialize
	end

	def title=(title)
		@title= title.split;
	end

	def title
		@words = @title;
		@title = [""]
		@words.each_with_index do |word, num| 
			if (num == 0 || (word.downcase != "and" && word.downcase != "in" && word.downcase != "the" && word.downcase != "of" && word.downcase != "a" && word.downcase != "an"))
				@title << word.capitalize;
			else
				@title << word.downcase;
			end
		end
		@title = @title.join(" ")
		@title[1,@title.length]
	end
end
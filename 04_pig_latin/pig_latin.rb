def singleword(word)
	unless word[0].downcase == ("a") || word[0].downcase == ("e") || word[0].downcase == ("i") || word[0].downcase == ("o") || word[0].downcase == ("u")
		if word[0,3].downcase == "sch" || word[0,3].downcase == "scr"  || word[0,3].downcase == "shr" || word[0,3].downcase == "sph" || word[0,3].downcase == "spl" || word[0,3].downcase == "spr" || word[0,3].downcase == "squ" || word[0,3].downcase == "str" || word[0,3].downcase == "thr"
			word = word[3, word.length] + word[0,3];
		elsif word[0,2].downcase == "ch" || word[0,2].downcase == "bl" || word[0,2].downcase == "br" || word[0,2].downcase == "ch" || word[0,2].downcase == "cl" || word[0,2].downcase == "cr" || word[0,2].downcase == "dr" || word[0,1].downcase == "fl" || word[0,2].downcase == "fr" || word[0,2].downcase == "gl" || word[0,2].downcase == "gr" || word[0,2].downcase == "pl" || word[0,2].downcase == "pr" || word[0,2].downcase == "sc" || word[0,2].downcase == "sh" || word[0,2].downcase == "sk" || word[0,2].downcase == "sl" || word[0,2].downcase == "sm" || word[0,2].downcase == "sn" || word[0,2].downcase == "sp" || word[0,2].downcase == "st" || word[0,2].downcase == "sw" || word[0,2].downcase == "th" || word[0,2].downcase == "tr" || word[0,2].downcase == "tw" || word[0,2].downcase == "wh" || word[0,2].downcase == "wr"|| word[0,2].downcase == "qu"
			word = word[2, word.length] + word[0,2];
		else
			word = word[1, word.length] + word[0];
		end
	end
	word += "ay";
end

def translate(phrase)
	words = phrase.split;
	final = "";
	words.each do|word|
		final += singleword(word) + " ";
	end
	final[0, final.length - 1];
end
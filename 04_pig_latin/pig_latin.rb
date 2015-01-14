def translate(word)
	unless word[0].downcase == ("a") || word[0].downcase == ("e") || word[0].downcase == ("i") || word[0].downcase == ("o") || word[0].downcase == ("u")
		if word[0,2].downcase == "sch" || word[0,2].downcase == "scr"  || word[0,2].downcase == "shr" || word[0,2].downcase == "sph" || word[0,2].downcase == "spl" || word[0,2].downcase == "spr" || word[0,2].downcase == "squ" || word[0,2].downcase == "str" || word[0,2].downcase == "thr"
			word = word[3, word.length] + word[0,2];
		elsif word[0,1].downcase == "ch" || word[0,1].downcase == "bl" || word[0,1].downcase == "br" || word[0,1].downcase == "ch" || word[0,1].downcase == "cl" || word[0,1].downcase == "cr" || word[0,1].downcase == "dr" || word[0,1].downcase == "fl" || word[0,1].downcase == "fr" || word[0,1].downcase == "gl" || word[0,1].downcase == "gr" || word[0,1].downcase == "pl" || word[0,1].downcase == "pr" || word[0,1].downcase == "sc" || word[0,1].downcase == "sh" || word[0,1].downcase == "sk" || word[0,1].downcase == "sl" || word[0,1].downcase == "sm" || word[0,1].downcase == "sn" || word[0,1].downcase == "sp" || word[0,1].downcase == "st" || word[0,1].downcase == "sw" || word[0,1].downcase == "th" || word[0,1].downcase == "tr" || word[0,1].downcase == "tw" || word[0,1].downcase == "wh" || word[0,1].downcase == "wr"
			word = word[2, word.length] + word[0,1];
		else
			word = word[1, word.length] + word[0];
		end
	end
	word += "ay";
end
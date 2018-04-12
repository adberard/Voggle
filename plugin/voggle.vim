let g:voggle_pairs = [
	\ ["true", "false"],
	\ ["True", "False"],
	\ ["yes", "no"],
	\ ["Yes", "No"],
	\ ["yep", "nope"],
	\ ["Yep", "Nope"],
	\ ["on", "off"],
	\ ["On", "Off"],
	\ ["ON", "OFF"],
	\ [">", "<"],
	\ ["==" , "!="],
	\ ["&&", "||"],
	\ [".", "->"],
	\ ["1", "0"],
	\ ["+", "-"]
	\ ]

function! voggle#get_biggest()
	let l:lengths = []
	for pair in g:voggle_pairs
		for item in pair
			call add(l:lengths, strchars(item))
		endfor
	endfor 
	return max(l:lengths)
endfunction

let g:biggest_pair = voggle#get_biggest()

command! Voggle call voggle#toggle()


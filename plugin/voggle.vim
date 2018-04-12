let g:toggle_pairs = {
	\ "true": "false",
	\ "false": "true",
	\ "True": "False",
	\ "False": "True",
	\ "yes": "no",
	\ "no": "yes",
	\ "Yes": "No",
	\ "No": "Yes",
	\ "yep": "nope",
	\ "nope": "yep",
	\ "Yep": "Nope",
	\ "Nope": "Yep",
	\ "on": "off",
	\ "off": "on",
	\ "On": "Off",
	\ "Off": "On",
	\ ">": "<",
	\ "<": ">",
	\ "==": "!=",
	\ "!=": "==",
	\ "&&": "||",
	\ "||": "&&",
	\ ".": "->",
	\ "->": ".",
	\ "1": "0",
	\ "0": "1",
	\ "+": "-",
	\ "-": "+"
	\ }

function! voggle#get_biggest()
	let l:lengths = []
	for key in keys(g:toggle_pairs)
		call add(lengths, strchars(key))
	endfor 
	return max(l:lengths)
endfunction

let g:biggest_pair = voggle#get_biggest()

command! Voggle call voggle#toggle()


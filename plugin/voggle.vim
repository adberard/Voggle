let g:toggle_pairs = {
	\ "true": "false",
	\ "false": "true",
	\ "True": "False",
	\ "False": "True",
	\ "yep": "nope",
	\ "nope": "yep",
	\ "Yep": "Nope",
	\ "Nope": "Yep",
	\ ">": "<",
	\ "<": ">",
	\ "==": "!=",
	\ "!=": "=="
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

" These line are just here for some testing.
" False	false
" True	true
" Nope	nope
" Yep	yep
" >	<
" ==	!=

let g:toggle_pairs = {
	\ "true": "false",
	\ "false": "true",
	\ "True": "False",
	\ "False": "True"
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
" Do whatever you want with them, I guess.
" True	true
" False	false
" Nope	nope
" Yep	yep

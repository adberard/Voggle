function! voggle#toggle()
	let s:current_pos = getcurpos()
	let s:current_line =  getline(s:current_pos[1])
	let l:output = voggle#find_pair(s:current_line, s:current_pos[2])

	if type(l:output) == type([])
		let l:new_line = (l:output[1] == 0 ? "" : s:current_line[:l:output[1]-1]) . g:toggle_pairs[l:output[0]]  . s:current_line[l:output[1]+l:output[2]:]
		call setline(s:current_pos[1], l:new_line)
		let l:new_size = strchars(g:toggle_pairs[l:output[0]])
		if l:new_size < (s:current_pos[2] - l:output[1])
			let s:current_pos[2] = (l:output[1] + l:new_size)
			call setpos('.', s:current_pos)
		endif
	endif

endfunction


function! voggle#find_pair(line, position)
	let l:position = a:position
	while l:position >= 0 && l:position > (a:position-g:biggest_pair)
		let l:size = 1	
		while l:size <= g:biggest_pair
			let l:word = a:line[l:position-1:l:position+l:size-2]
			if has_key(g:toggle_pairs, l:word)
				if l:position-1 + l:size >= s:current_pos[2]
					return [l:word, l:position-1, l:size]
				endif
			endif
			let l:size += 1
		endwhile
		let l:position -= 1
	endwhile
	return 0
endfunction


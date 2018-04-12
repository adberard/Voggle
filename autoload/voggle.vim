function! voggle#toggle()
	let s:current_pos = getcurpos()
	let s:current_line =  getline(s:current_pos[1])
	let output = voggle#find_togglable(s:current_line, s:current_pos[2])

	if type(output) == type([])
		let new_line = (output[1] == 0 ? "" : s:current_line[:output[1]-1]) . output[0] . s:current_line[output[1]+output[2]:]
		call setline(s:current_pos[1], new_line)
		let new_size = strchars(output[0])
		if new_size < (s:current_pos[2] - output[1])
			let s:current_pos[2] = (output[1] + new_size)
			call setpos('.', s:current_pos)
		endif
	endif

endfunction


function! voggle#find_togglable(line, position)
	let l:position = a:position
	while position >= 0 && position > (a:position-g:biggest_pair)
		let size = 1	
		while size <= g:biggest_pair
			let word = a:line[position-1:position+size-2]
			let output = voggle#is_togglable(word)
			if output != []
				if l:position-1 + l:size >= s:current_pos[2]
					return [g:voggle_pairs[output[0]][output[1]-1], l:position-1, l:size]
				endif
			endif
			let l:size += 1
		endwhile
		let l:position -= 1
	endwhile
	return 0
endfunction

function! voggle#is_togglable(possible_togglable)
	for pairs in g:voggle_pairs
		if index(pairs, a:possible_togglable) != -1
			return [index(g:voggle_pairs, pairs), index(pairs, a:possible_togglable)]
		endif
	endfor
	return []
endfunction

function! voggle#toggle()
	let current_pos = getcurpos()
	let current_line =  getline(current_pos[1])
	let l:word = voggle#is_pair(current_line, current_pos[2])
	echo l:word
	if l:word != "0"
		echo "Test"
	endif
	
endfunction

function! voggle#is_pair(line, position)
	let l:size = 1
	
	while l:size <= g:biggest_pair
		let l:word = a:line[a:position-1:a:position+l:size-2]
		if has_key(g:toggle_pairs, l:word)
			return l:word
		endif
		let size += 1
	endwhile
	return 0
endfunction


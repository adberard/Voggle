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
	\ ["+", "-"],
	\ ["(", "!("],
	\ ["const", "let"],
	\ ["l:", "g:"],
	\ ["px", "%"],
	\ ["width", "height"],
	\ ["dark", "light"],
	\ ["black", "white"],
	\ ["push", "pull"],
	\ ["start", "stop"],
	\ ["top", "bottom"],
	\ ["left", "right"],
	\ ["alive", "dead"],
	\ ["Hard", "Soft"],
	\ ["hard", "soft"],
	\ ["accept", "decline"],
	\ ["before", "after"],
	\ ["out", "in"],
	\ ["real", "fake"],
	\ ["exec", "kill"],
	\ ["rare", "common"],
	\ ["transparent", "opaque"],
	\ ["transparency", "opacity"],
	\ ["safe", "unsafe"],
	\ ["fold", "unfold"],
	\ ["folded", "unfolded"],
	\ ["zip", "unzip"],
	\ ["import", "export"],
	\ ["max", "min"],
	\ ["private", "public"],
	\ ["never", "alway"],
	\ ["maximum", "minimum"],
	\ ["SUCCESS", "FAILURE"],
	\ ["|", "&"],
	\ [">>", "<<"],
	\ ["undefined", "defined"],
	\ ["enable", "disable"],
	\ ["Enable", "Disable"],
  \ ["acquire",	"release"],
  \ ["add",	"remove"],
  \ ["advance",	"retreat"],
  \ ["allocate",	"free"],
  \ ["assemble",	"disassemble"],
  \ ["assign",	"deassign"],
  \ ["associate",	"dissociate"],
  \ ["attach",	"detach"],
  \ ["begin",	"end"],
  \ ["bind",	"unbind"],
  \ ["compile",	"decompile"],
  \ ["compress",	"decompress"],
  \ ["connect",	"disconnect"],
  \ ["construct",	"destruct"],
  \ ["create",	"destroy"],
  \ ["do",	"undo"],
  \ ["enable",	"disable"],
  \ ["enqueue",	"dequeue"],
  \ ["enter",	"exit"],
  \ ["expand",	"collapse"],
  \ ["first",	"last"],
  \ ["freeze",	"unfreeze"],
  \ ["front",	"back"],
  \ ["inner",	"outer"],
  \ ["full",	"empty"],
  \ ["end",	"begin"],
  \ ["get",	"set"],
  \ ["grant",	"revoke"],
  \ ["head",	"tail"],
  \ ["import",	"export"],
  \ ["increase",	"decrease"],
  \ ["increment",	"decrement"],
  \ ["indent",	"dedent"],
  \ ["inflate",	"deflate"],
  \ ["inject",	"eject"],
  \ ["insert",	"delete"],
  \ ["install",	"uninstall"],
  \ ["link",	"unlink"],
  \ ["load",	"unload"],
  \ ["lock",	"unlock"],
  \ ["maximum",	"minimum"],
  \ ["new",	"old"],
  \ ["next",	"previous"],
  \ ["open",	"close"],
  \ ["opened",	"closed"],
  \ ["compose",	"parse"],
  \ ["push",	"pop"],
  \ ["raise",	"lower"],
  \ ["read",	"write"],
  \ ["reference",	"derefence"],
  \ ["register",	"deregister"],
  \ ["resume",	"suspend"],
  \ ["select",	"deselect"],
  \ ["send",	"receive"],
  \ ["serialize",	"deserialize"],
  \ ["set",	"get"],
  \ ["show",	"hide"],
  \ ["up",	"down"],
  \ ["upper",	"lower"],
  \ ["start",	"stop"],
  \ ["started",	"stoped"],
  \ ["optional",	"required"],
  \ ["less",	"more"],
  \ ["set up", "tear down"],
  \ ["start up",	"shut down"],
	\]

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


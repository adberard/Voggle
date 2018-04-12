# Voggle

This plugin can toggle from one thing to another.
For example:  
	`True <-> False`  
	`== <-> !=`  
	`+ <-> -`  

It will (try to) toggle whatever item the cursor is over when `:Voggle` is called.  
So you can just bind that to some key with for example: `nmap t :Voggle<Enter>`  

The togglable values have to entered twice in the dictionary, because you have to enter both ways. `True > False` and `False > True`  
I thought about changing this, but then relised that using this you can make a cylus of some kind: `A > B, B > C, C > A` although I haven't found a use for it yet. :P

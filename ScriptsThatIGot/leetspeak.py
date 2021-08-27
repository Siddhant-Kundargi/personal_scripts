"""
L33tsp3@k Generator

Usage: Pipe in a dictionary.

"""

SUBS = {
	"a":"4@",
	"b":"8",
	"c":"[(",
	"d":"",
	"e":"3",
	"f":"",
	"g":"96",
	"h":"#",
	"i":"1!",
	"j":"",
	"k":"",
	"l":"1",
	"m":"",
	"n":"",
	"o":"0",
	"p":"",
	"q":"",
	"r":"",
	"s":"$5",
	"t":"7+",
	"u":"",
	"v":"",
	"w":"",
	"x":"",
	"y":"",
	"z":""
}

def leet_gen(words):
	
	def iter_word(word):
		if word:
			ch = word[0]
			for rest in iter_word(word[1:]):
				yield ch + rest
			for ch in SUBS.get(ch.lower(), []):
				for rest in iter_word(word[1:]):
					yield ch + rest
		else:
			yield ""
		
	for word in words:
		for tmp in iter_word(word):
			yield tmp

if __name__ == "__main__":
		
	import sys
	words = (line.strip() for line in sys.stdin)
		
	for leet in leet_gen(words):
		print leet
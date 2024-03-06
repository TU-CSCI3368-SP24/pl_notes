main: Lexer.hs Parser.hs Repl.hs Eval.hs
	ghc -o bitmask Repl.hs

Lexer.hs: Lexer.x
	alex Lexer.x
	
Parser.hs: Parser.y
	happy Parser.y

clean:
	rm -f greygoo  
	rm -f Lexer.hs
	rm -f Parser.hs
	rm -f *.o
	rm -f *.hi

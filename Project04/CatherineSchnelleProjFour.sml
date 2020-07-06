datatype 'element mylist = NIL 
| CONS of 'element * 'element mylist;


fun prod NIL = 1
| prod (CONS(x, xs)) = x * prod xs;


fun append NIL L = L
| append (CONS(x, xs)) L = CONS(x, (append xs L));


fun reverse NIL = NIL
| reverse (CONS(head, tail))= append (reverse tail) (CONS (head, NIL));

	

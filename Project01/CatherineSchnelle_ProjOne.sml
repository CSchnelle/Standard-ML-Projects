(*Catherine Schnelle _ Project One_ MyFirstMLProject*)
(*CSCI_421_VA*)


(*problem1*)
fun cube x=x*x*x;



(*problem 2*)
fun sqsum n =
if n = 0 then 0
else (n*n) +sqsum(n-1);


(* ex. from your sample run*)
fun cube2 x:real = x*x*x;

(*problem 3*)
fun maxhelper([],n ) = n | maxhelper ((x::xs),n)=
if x>n then maxhelper (xs,x)
else maxhelper (xs, n);

fun max x = maxhelper(tl x, hd x);

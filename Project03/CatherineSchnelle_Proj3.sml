fun mymap1 input nil = nil
| mymap1 input (p::q) = input p :: mymap1 input q;

fun mymap2 input nil = nil
| mymap2 input (p::q) = input p :: mymap2 input q;

fun ordlist x=map (ord) x;

fun mylength l = foldr ( fn(x,y) => 1+y) 0 l;


fun maxList x = maxhelper(tl x, hd x);
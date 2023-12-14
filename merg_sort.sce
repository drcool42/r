function [ a1 ]= mergesort (a ,p , r)
	if (p < r )
		q = int (( p + r ) /2) ;
		a = mergesort (a ,p , q ) ;
		a = mergesort (a , q +1 , r ) ;
		a = merge (a ,p ,q , r ) ;
	else
		a1 = a 
	end
a1 = a ;
endfunction

function [ a1 ]= merge (a ,p ,q , r )
n1 =q - p +1;
n2 =r - q ;
left =  ( n1 +1) ;
right =  ( n2 +1) ;
for i =1: n1
left ( i ) = a ( p +i -1) ;
end
for i1 =1: n2
right ( i1 ) = a ( q + i1 ) ;


end
left ( n1 +1) =999999999;
right ( n2 +1) =999999999;
i =1;
j =1;
k=p;
for k = p : r
if ( left ( i ) <= right ( j ) )
a ( k ) = left ( i ) ;
i = i +1;
else
a ( k ) = right ( j ) ;
j = j +1;
end
end
a1 = a ;
endfunction
// C a l l i n g R o u t i n e :
 a =[26 5 77 1 61 11 59 15]
//a1 = mergesort (a ,1 ,8)
 disp(a1)

a=[5 4 3 2 1];
n=length(a);
for i=1:n-1
    for j=1:n
        if a(j)>a(j+1)
            temp=(j);
            a(j)=a(j+1);
            a(j+1)=temp;
	
         end   
    end
disp(i);    
end

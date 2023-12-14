//insertion sort
a=[5 4 3 2 1]
  for i=1:n
	temp=a(i);
	j=i-1;
	while (j>0 & a(j)>temp)
		a(j+1)=a(j);
		j=j-1;
	end
	a(j+1)=temp;
	disp(i);
end

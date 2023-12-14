a=[1 2 3 4 5 6];
n=length(a);
num=5;
found=%f;
for i=1:n
	if (a(i)==num)
		disp('number is found at index'+string(i));
		found=%t;
	break;
	end
end

if ~found
	disp('number not found');
end


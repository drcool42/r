// binary search
a=[1 2 3 4 5 6];
num=5;
l=1;
r=length(a);
found=%f;
while l<=r
	mid=floor((l+r)/2);
        if (a(mid)==num)
                disp('number is found at index'+string(mid));
                found=%t;
        break;
	elseif a(mid)<num
		l=mid+1;
	else
		r=mid-1;
        end
end

if ~found
        disp('number not found');
end



function sjf()
    n = input("Enter number of workers:")
    bt = zeros(1,n);
    p=1:n;
    
    disp("Enter jobs ")
    for i=1:n
        bt(i) = input("job "+string(i)+": ")
    end
    
    for i = 1:n
        pos = i;
        for j=i+1:n
            if bt(j)< bt (pos)
                pos = j;
           end
    end
    
    temp = bt(i);
    bt(i) = bt(pos);
    bt(pos)=temp;
    end
    
    wt(1)=0;
    for i=2:n
        wt(i) =0;
        for j=1:i
          wt(i) = wt(i) + bt(j)  
        end          
     end
     
     for i=1:n
         printf("w%d\t%d\t\n",p(i),bt(i))
     end
    
    
endfunction

sjf()



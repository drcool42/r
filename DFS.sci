   visited = zeros(1, 7);
    A = [0 1 1 1 0 0 0;
         1 0 1 0 0 0 0;
         1 1 0 1 1 0 0;
         1 0 1 0 1 0 0;
         0 0 1 1 0 1 1;
         0 0 0 0 1 0 0;
         0 0 0 0 1 0 0];


function DFS(i, A)
    global visited;
    printf('%d ', i);
    visited(i) = 1;

   

    for j = 1:7
        if A(i, j) == 1 && ~visited(j)
            DFS(j, A);
        end
    end
endfunction


    // DFS Implementation
    DFS(1, A);



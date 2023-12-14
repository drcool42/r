function topologicalSort(adjacencyMatrix)
    n = size(adjacencyMatrix, 1);
    visited = zeros(1, n);
    stack = [];
    
    function dfs(v)
        visited(v) = 1;
        
        for i = 1:n
            if adjacencyMatrix(v, i) == 1 && visited(i) == 0
                dfs(i);
            end
        end
        
        stack = [stack, v];
    end
    
    for i = 1:n
        if visited(i) == 0
            dfs(i);
        end
    end
    
    disp("Topological Order:");
    disp(stack);
endfunction

// Example usage:
adjacencyMatrix = [
    0 1 1 0 0;
    0 0 0 1 0;
    0 0 0 1 1;
    0 0 0 0 1;
    0 0 0 0 0
];

topologicalSort(adjacencyMatrix);

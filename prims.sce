function prim(graph)
    n = size(graph, 1);  // Number of vertices
    selected = zeros(1, n);
    selected(1) = 1;  // Start with the first vertex

    edges = zeros(2, n - 1);  // To store the edges of the minimum spanning tree
    edgeCount = 1;

    while edgeCount < n
        minWeight = Inf;
        u = v = 0;

        for i = 1:n
            if selected(i) == 1
                for j = 1:n
                    if selected(j) == 0 && graph(i, j) < minWeight
                        minWeight = graph(i, j);
                        u = i;
                        v = j;
                    end
                end
            end
        end

        selected(v) = 1;
        edges(:, edgeCount) = [u; v];
        edgeCount = edgeCount + 1;
    end

    disp('Edges of the Minimum Spanning Tree:');
    disp(edges);
endfunction

// Example usage
graph = [
    0 2 0 6 0;
    2 0 3 8 5;
    0 3 0 0 7;
    6 8 0 0 9;
    0 5 7 9 0
];

prim(graph);

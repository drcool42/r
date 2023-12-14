function knapsack_greedy(values, weights, capacity)
    n = length(values);

    // Calculate value-to-weight ratios
    ratios = values ./ weights;

    // Create an array of indices sorted by the ratios in descending order
    indices = sort(1:n, -1, ratios);

    // Initialize variables
    totalValue = 0;
    knapsack = zeros(1, n);

    // Greedy approach
    for i = 1:n
        index = indices(i);
        if weights(index) <= capacity
            knapsack(index) = 1;
            totalValue = totalValue + values(index);
            capacity = capacity - weights(index);
        end
    end

    // Display results
    disp('Items in the knapsack (1 indicates selected, 0 indicates not selected):');
    disp(knapsack);
    disp(['Total value in the knapsack: ' num2str(totalValue)]);
endfunction

// Example usage
values = [60, 100, 120];
weights = [10, 20, 30];
capacity = 50;

knapsack_greedy(values, weights, capacity);

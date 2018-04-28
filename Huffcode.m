%Give the binary Huffman encoding of the given vector of probabilities
function [ result ] = Huffcode( probabilities )
N = length(probabilities);

if(N == 1)
   result = "0";
   return 
end

%Adjacency matrix
tree = zeros(N,N);

%Sort probabilities and keep trace of the order 
[prob,order] = sort(probabilities);

%Number associated with each probability in ascending order
numbers = 1:N;
k = N+1;

%While the tree is not complete
while (length(prob) ~= 1)
    %Add the two smallest probabilities and add the result to the vector with
    %an incremented number
    prob(length(prob)+1) = prob(1) + prob(2);
    numbers(length(numbers)+1) = k;
    
    %Create a oriented edge in the adjacency matrix from the sum to the two probabilities 
    tree(k, numbers(1)) = 1;
    tree(k, numbers(2)) = 1;
    
    %Add a column in the matrix for the sum
    tree(:,k) = zeros(1,k);
    k = k + 1;
    
    %Remove the two smallest probabilities and sort again
    prob = prob(3:length(prob));
    numbers = numbers(3:length(numbers));
    [prob, index] = sort(prob);
    
    %Sort "numbers" the same way as "prob" for consistency
    numbers = numbers(index);
end
%Create a vector of strings for the codes associated to each node
%number of nodes = k - 1
result = strings(1,k-1);
node = k-1;

%Recursively attributes the codes starting by the root
result = recursive_attribution(tree, node, result);

%Get only the codes for the leaves (probabilities given as argument)
result = result(1:N);
temp = result;

%Set the codes in the same order as the probabilities given as arguments
for i = 1 : N
   result(order(i)) = temp(i); 
end

end


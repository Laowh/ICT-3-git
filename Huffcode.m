function [ result ] = Huffcode( probabilities )
N = length(probabilities);
tree = zeros(N,N);
if(N == 1)
   result = "0";
   return 
end
[prob,order] = sort(probabilities);
numbers = 1:N;
k = N+1;

while (length(prob) ~= 1)
    prob(length(prob(1,:))+1) = prob(1) + prob(2);
    numbers(length(numbers)+1) = k;
    tree(k, numbers(1)) = 1;
    tree(k, numbers(2)) = 1;
    tree(:,k) = zeros(1,k);
    k = k + 1;
    prob = prob(3:length(prob));
    numbers = numbers(3:length(numbers));
    [prob, index] = sort(prob);
    numbers = numbers(index);
end
result = strings(1,k-1);
node = k-1;
result = recursive_attribution(tree, node, result);
result = result(1:N);

draw_graph(tree, ["0.03" "0.05" "0.07" "0.1" "0.1" "0.1" "0.25" "0.3" "0.08" "0.15" "0.2" "0.25" "0.45" "0.55" "1"]);
temp = result;
for i = 1 :N
   result(order(i)) = temp(i); 
end

end


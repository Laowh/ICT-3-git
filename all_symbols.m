% Let cardinality be a vector of p cardinalities. The function returns all
% possible symbols of size p in ascending number where each element in
% position i can have a value from 1 to cardinality(i)  (integer)

function [ result ] = all_symbols( cardinality )
%Number of possibilities
x = produ(cardinality);

%"strings" needs Matlab2017, creates a vector of empty strings
result = strings(1,x);


pace = 1;

%Fill all symbols, starting by the end of the symbol
for a =  1 : length(cardinality) 
    %From end to beginning of the symbol
    i = length(cardinality)-a+1
    %For each symbol
    for j = 1 : x
        %add the value to the symbol
        result(j) = strcat(num2str(mod(ceil(j/pace),cardinality(i))+1),result(j));
    
    end
    % number of iterations before we increase the value we put in the
    % symbol
    pace = pace * cardinality(i);
end
%Ascending order
result = sort(result);
end


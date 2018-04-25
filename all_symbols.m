function [ result ] = all_symbols( cardinality )

x = produ(cardinality);
result = strings(1,x);
pace = 1;
for a =  1 : length(cardinality) 
    i = length(cardinality)-a+1
    for j = 1 : x
        result(j) = strcat(num2str(mod(ceil(j/pace),cardinality(i))+1),result(j));
    
    end
    pace = pace * cardinality(i);
end
result = sort(result);
end


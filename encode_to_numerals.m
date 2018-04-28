%Replace the symbols in data by a number representing their position if
%they were sorted by ascending order
function [result] = encode_to_numerals( data )
%Sort all symbols in data
D = sort(unique(data));

%Recreate data but with the position numbers
for i = 1 : length(data)
   result(i) = find(D == data(i),1); 
end

end


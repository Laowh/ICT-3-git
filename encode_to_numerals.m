function [result] = encode_to_numerals( data )
D = sort(unique(data));
for i = 1 : length(data)
   result(i) = find(D == data(i),1); 
end

end


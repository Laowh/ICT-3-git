function [ result ] = produ( vector )
result = 1;

for i = 1 : length(vector)
    result = result * vector(i);
end

end


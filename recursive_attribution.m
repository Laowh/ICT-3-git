%Recursively attributes a code to each accessible node starting with the
%given "node" number. "Tree" is an adjacency matrix of an oriented graph
%!!! without loops !!! "codes" is an array of strings and "codes(node)" must contain at least an empty string 
function [ codes ] = recursive_attribution(tree, node, codes)

%Find childs of this node
childs = find(tree(node,:));

%If not a leaf
if(~isempty(childs))
    %Child with the smallest node number
    codes(childs(1)) = strcat(codes(node),"0");
    %Child with the highest node number
    codes(childs(2)) = strcat(codes(node),"1");
    
    %Apply the function recursively to the childs
    codes = recursive_attribution(tree, childs(1), codes);
    codes = recursive_attribution(tree, childs(2), codes);
end
end


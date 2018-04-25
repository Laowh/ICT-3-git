function [ codes ] = recursive_attribution(tree, node, codes)
childs = find(tree(node,:));
if(~isempty(childs))
    codes(childs(1)) = strcat(codes(node),"0");
    codes(childs(2)) = strcat(codes(node),"1");
    
    codes = recursive_attribution(tree, childs(1), codes);
    codes = recursive_attribution(tree, childs(2), codes);
end
end


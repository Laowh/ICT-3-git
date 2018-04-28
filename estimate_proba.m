function [ result ] = estimate_proba(message, alphabet)
%Initialize to 0 occurrences
occurences = zeros(1,length(alphabet));

%Each time we encounter a letter -> occurence(letter)++
for i = 1: length(message)
   pos = find(alphabet == message(i),1);
   if(pos ~=0)
       occurences(pos) = occurences(pos) +1;
   end
end
%Get percentage of occurrence
result = occurences./length(message);
end


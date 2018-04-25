function [ result ] = estimate_proba(message, alphabet)
occurences = zeros(1,length(alphabet));

for i = 1: length(message)
   pos = find(alphabet == message(i),1);
   if(pos ~=0)
       occurences(pos) = occurences(pos) +1;
   end
end
result = occurences./length(message);
end


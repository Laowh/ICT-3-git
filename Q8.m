u = unique(data);
p = estimate_proba(data, u)
entropy = 0;

for i = 1 : 16
    entropy = entropy - p(i)*log2(p(i));
end
entropy
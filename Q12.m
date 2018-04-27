u = unique(data);
p = estimate_proba(data, u)
code = Huffcode (p)
n = 0;

for i = 1 : 16
    n = n + p(i)*strlength(code(i));
end

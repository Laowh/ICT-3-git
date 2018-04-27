
p = prob_distribution;
code = Huffcode (p)
n = 0;

for i = 1 : 16
    n = n + p(i)*strlength(code(i));
end

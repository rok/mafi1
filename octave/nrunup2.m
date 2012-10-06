function Y = nrunup2 (D)
plus = 0;
minus = 0;
equal = 0;
P = zeros(10,1);
M = zeros(10,1);
E = zeros(25,1);

for i = [1:length(D)-1]

  if D(i) < D(i+1)
    if minus > 0
      M(minus) = M(minus) + 1;
    end
    if equal > 0
      E(equal) = E(equal) + 1;
    end
    plus = plus + 1;
    minus = 0;
    equal = 0;
  end

  if D(i) > D(i+1)
    if plus > 0
      P(plus) = P(plus) + 1;
    end
    if equal > 0
      E(equal) = E(equal) + 1;
    end
    plus = 0;
    minus = minus + 1;
    equal = 0;
  end

  if D(i) == D(i+1)
    if plus > 0
      P(plus) = P(plus) + 1;
    end
    if minus > 0
      M(minus) = M(minus) + 1;
    end
    plus = 0;
    minus = 0;
    equal = equal + 1;
  end
end

    if plus > 0
      P(plus) = P(plus) + 1;
    end
    if minus > 0
      M(minus) = M(minus) + 1;
    end
    if equal > 0
      E(equal) = E(equal) + 1;
    end
PP = P ./ (P + M + E(1:10,:) );
PM = P / (sum(P + M) + sum(E));
Y = PP .* PM;
Y(6:end,end) = 0; % popravek zaradi NaN pri rand.org
Y = Y ./ sum(Y)
%Y = P / (sum(P + M) + sum(E))

end
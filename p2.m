
close all;
% Build a random signal
N = 2;
%x = diag(a) * randn(N, T);
C = [4 1;1 3]
[V, D] = eig(C);
Itr = 100; % The number of power method iterations
rng(0);
v0 = rand(2,1);
v1 = EigenAnalysisPowerMethod(C, v0, Itr);
scale1 = (C * v1)./v1;
lambda1 = mean(scale1);


C2 = C - lambda1*(v1*v1');
v2 = EigenAnalysisPowerMethod(C2, v0, Itr);
scale2 = (C2 * v2)./v2;
lambda2 = mean(scale2);


% part 2
vectors = zeros(2,20)
lambdas = zeros(1,20)
v = v0(:);
for k = 1 : 20
    v = C * v;
    v = v / sqrt(v' * v);
    scale0= (C * v)./v;
    lambdas(k) = mean(scale0);
    vectors(:,k) = v;
end

figure(1)
plot(vectors(1,:))
hold on
plot(vectors(2,:))
title('First 20 Iteration Vectors')

figure(2)
x = [1:20]
plot(x, lambdas)
title('First 20 Iteration Lamdas')

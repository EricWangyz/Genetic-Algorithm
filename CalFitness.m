%% 
%function fitness = CalFitness(chrom, N, ~)
%求解sin(x)+cos(y)+0.1*x+0.1*y的适应度计算方法
% fitness = zeros(N, 1);
% %开始计算适应度
% for i = 1:N
%     x = chrom(i, 1);
%     y = chrom(i, 2);
%     fitness(i) = sin(x)+cos(y)+0.1*x+0.1*y;
% end


%%
function fitness = CalFitness(chrom, N, ~)
%要找出一个点，这个点距离其他所有点的距离之和最短
fitness = zeros(N, 1);
point = [1.4,2.7,1.5,4.6,5.2,5.6,8.2,3.8,4.6,8.7;
            3.6,0.1,6.9,3.6,1.2,2.7,3.5,2.1,2.9,3.3];
%开始计算适应度
for i = 1:N
    x = chrom(i, 1);
    y = chrom(i, 2);
    xy = [x; y]*ones(1, 10);
    d = sum(sqrt((xy(1,:)-point(1,:)).^2+(xy(2,:)-point(2,:)).^2));
    fitness(i) = 1/d;
end
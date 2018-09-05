%% 
%function fitness = CalFitness(chrom, N, ~)
%���sin(x)+cos(y)+0.1*x+0.1*y����Ӧ�ȼ��㷽��
% fitness = zeros(N, 1);
% %��ʼ������Ӧ��
% for i = 1:N
%     x = chrom(i, 1);
%     y = chrom(i, 2);
%     fitness(i) = sin(x)+cos(y)+0.1*x+0.1*y;
% end


%%
function fitness = CalFitness(chrom, N, ~)
%Ҫ�ҳ�һ���㣬���������������е�ľ���֮�����
fitness = zeros(N, 1);
point = [1.4,2.7,1.5,4.6,5.2,5.6,8.2,3.8,4.6,8.7;
            3.6,0.1,6.9,3.6,1.2,2.7,3.5,2.1,2.9,3.3];
%��ʼ������Ӧ��
for i = 1:N
    x = chrom(i, 1);
    y = chrom(i, 2);
    xy = [x; y]*ones(1, 10);
    d = sum(sqrt((xy(1,:)-point(1,:)).^2+(xy(2,:)-point(2,:)).^2));
    fitness(i) = 1/d;
end
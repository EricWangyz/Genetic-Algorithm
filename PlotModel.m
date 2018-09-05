%%计算Z =sin(X)+cos(Y)+0.1*X+0.1*Y时的画图函数定义
% function y = PlotModel(chrom)
% x = chrom(1);
% y = chrom(2);
% z = chrom(3);
% figure(2)
% scatter3(x, y, z, 'ko')
% hold on
% [X, Y] = meshgrid(-10:0.1:10);
% Z =sin(X)+cos(Y)+0.1*X+0.1*Y;
% mesh(X, Y, Z)
% y=1;

%%
function y = PlotModel(chrom)
%要找出一个点，这个点距离其他所有点的距离之和最短
point = [1.4,2.7,1.5,4.6,5.2,5.6,8.2,3.8,4.6,8.7;
            3.6,0.1,6.9,3.6,1.2,2.7,3.5,2.1,2.9,3.3];
figure(2)
scatter(point(1,:),point(2,:), 'ko')
hold on
scatter(chrom(1), chrom(2), 'bo', 'filled')
for i = 1:10
    plot([point(1, i) chrom(1)], [point(2, i) chrom(2)], 'r')
y=1;
end
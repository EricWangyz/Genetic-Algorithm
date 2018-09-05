function chrom_new = MutChrom(chrom, mut, N, N_chrom, chrom_range, t, iter)
for i = 1:N
    for j = 1:N_chrom
        mut_rand = rand; %�Ƿ����
        if mut_rand <=mut
            mut_pm = rand; %���ӻ��Ǽ���
            mut_num = rand*(1-t/iter)^2;
            if mut_pm<=0.5
                chrom(i, j)= chrom(i, j)*(1-mut_num);
            else
                chrom(i, j)= chrom(i, j)*(1+mut_num);
            end
            chrom(i, j) = IfOut(chrom(i, j), chrom_range(:, j)); %�����Ƿ�Խ��
        end
    end
end
chrom_new = chrom;
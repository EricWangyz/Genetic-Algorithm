function chrom_new = AcrChrom(chrom, acr, N, N_chrom)
for i = 1:N
    acr_rand = rand;
    if acr_rand<acr %�������
        acr_chrom = floor((N-1)*rand+1); %Ҫ�����Ⱦɫ��
        acr_node = floor((N_chrom-1)*rand+1); %Ҫ����Ľڵ�
        %���濪ʼ
        temp = chrom(i, acr_node);
        chrom(i, acr_node) = chrom(acr_chrom, acr_node); 
        chrom(acr_chrom, acr_node) = temp;
    end
end
chrom_new = chrom;
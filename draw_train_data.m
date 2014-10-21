clear all;

[fid1,message1]=fopen ('male.TXT','r');
[fid2,message2]=fopen('female.TXT','r');
if fid1>0 && fid2>0
    male=fscanf(fid1,'%g',[2,50])';
    female=fscanf(fid2,'%g',[2,50])';

else
    disp(message1);
    disp(message2);
    return;
end

plot(male(:,1),male(:,2),'+b',female(:,1),female(:,2),'or');
legend('male','female');
xlabel('height');
ylabel('weight');
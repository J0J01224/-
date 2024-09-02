load WaterData.mat
DataSet = Xtest;
for i=1:length(DataSet(1,:));
[s,w,n] = fsst(DataSet(:,i));
mesh(n,w/pi,abs(s))
axis tight
view(2)
print(gcf,'-dpng',['123/',num2str(i),'.png']) 
end
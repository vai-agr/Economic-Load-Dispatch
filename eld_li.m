clc;
Pd = 850;
a= [561 310 78];
b = [7.92 7.85 7.97];
c = [0.001562 0.00194 0.00482];
pl = [150 100 50];
ph = [600 400 200];
iter =0;
x = max(b);
dp = Pd;
alph = min(c)
c_list =[];

while(abs(dp)> 0.0001)
	P = (x-b)./(2*c);
	P = min(P,ph);
	P = max(P,pl);
	dp = Pd - sum(P);
	x = x+dp*alph;
	iter+=1;
	C = sum(a+b.*P+c.*P.*P);
	c_list = [c_list,C];
	disp(iter);
	disp(x);
	disp(C);
end
plot(1:iter, c_list);
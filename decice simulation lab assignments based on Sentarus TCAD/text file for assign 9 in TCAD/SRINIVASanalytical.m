clear all;
syms t
T=300;         
k=8.617e-5;     
eO=8.85e-14;
q=1.602e-19;
reP =11.8;
ni=1e10;
EG =1.12;
xp=-3.5*10^-4;
xn =-xp;
NA =1e16; ND=1e16;
Vbi =  k*T*log((NA*ND)/ni^2);
xN=sqrt(2*reP*eO/q*NA*Vbi/(ND*(NA+ND))); 
xP=sqrt(2*reP*eO/q*ND* Vbi/(NA *(NA+ND)));
p= linspace(xp, xn, 200);
q= linspace(xp, xn, 200);
r= linspace(xp, xn, 199);
s= linspace(xp, xn, 198);
V1= (Vbi-(q*ND.*(xN-p).^2/(2*reP*eO)).*(p<=xN)).*(p>=0); 
V2=0.5*q*NA.*(xP+p).^2/(reP*eO).*(p>=-xP & p <0);
Vx=V1+V2;
vp=Vx;
y =-1*diff(vp);
r=eO*reP*diff(y);
VMAX = 3;
E=Vx(1)+VMAX/2-k*T*log(NA/ni);
close

subplot(2,2,2);
e1= (-q*NA*(xP+p)/(reP*eO)).*(p>=-xP & p <0);
e2=-q*ND*(xN-p)/(reP*eO).*(p<=xN).*(p>=0); 
e=e1+e2;
plot (p,e);     %Electric field intensity
title("Electric field intensity")
xlabel("Length(um)");
ylabel("Electric field intensity volt per cm")
grid on;
hold on
subplot(2,2,1);
r1= (-NA).*(p>=-xP & p <0);
r2=(ND).*(p<=xN).*(p>=0); 
r=r1+r2;
plot (p,r); %Charge density
title("Charge density")
 xlabel("Length(um)");
ylabel("Charge density in coulumbs per c.c")
grid on;
 subplot(2,2,3);
 plot(p,vp);   %Potential
 title("Electrical Potential")
 xlabel("Length(um)");
ylabel("Electrical potential in volts")
grid on;



subplot(2,2,4)
plot (p,-Vx+EG/2+VMAX/2);
axis ([xp xn 0 VMAX]);
hold on
plot (p,-Vx-EG/2+VMAX/2);
plot ([xp xn], [E E]); 
plot ([0 0], [0.15 VMAX-0.5]); 

text(xn* 1.02,(-Vx(200)-EG/2+VMAX/2-.05), 'Ev');
text(xn*1.02,(-Vx(200)+EG/2+VMAX/2-.05),'Ec');  
text(xn* 1.02, EF-.05,"EF");
grid on;
title("Energy band diagram")
xlabel("Length(um)");
ylabel("Energy States in electron volt")
syms t
T=300;        
k=8.617e-5;    
eO=8.85e-14;
q=1.602e-19;
KS =11.8;
ni=1e10;
EG =1.12;
xL=-3.5*10^-4;
xR =-xL;
NA =1e16; ND=1e16;
Vbi =  k*T*log((NA*ND)/ni^2);
xN=sqrt(2*KS*eO/q*NA*Vbi/(ND*(NA+ND)));
xP=sqrt(2*KS*eO/q*ND* Vbi/(NA *(NA+ND)));
x= linspace(xL,xR, 200);
t= linspace(xL,xR, 200);
z= linspace(xL,xR, 199);
Q= linspace(xL,xR, 198);
Vx1= (Vbi-(q*ND.(xN-t).^2/(2*KS*eO)).(t<=xN)).*(t>=0);
Vx2=0.5*q*NA.(xP+t).^2/(KS*eO).(t>=-xP & t <0);
Vx=Vx1+Vx2;
potential=Vx;
y =-1*diff(potential);
r=eO*KS*diff(y);
VMAX = 3;
EF=Vx(1)+VMAX/2-k*T*log(NA/ni);
close
%plot (x,-Vx+EG/2+VMAX/2);
subplot(2,2,2);
E1= (-q*NA*(xP+x)/(KS*eO)).*(x>=-xP & x <0);
E2=-q*ND*(xN-x)/(KS*eO).(x<=xN).(x>=0);
E=E1+E2;
plot (x,E);     %Electric field
title("Electric field")
xlabel("Length(um)");
ylabel("Electric field volt per cm");
grid on;
hold on
subplot(2,2,1);
R1= (-NA).*(x>=-xP & x <0);
R2=(ND).(x<=xN).(x>=0);
R=R1+R2;
plot (x,R); %Charge density
title("Charge density")
xlabel("Length(um)");
ylabel("Charge density in coulumbs per c.c")
grid on;
subplot(2,2,3);
plot(x,potential);   %Potential
title("Potential")
xlabel("Length(um)");
ylabel("potential in volts")
grid on;
subplot(2,2,4)
plot (x,-Vx+EG/2+VMAX/2);
axis ([xL xR 0 VMAX]);
hold on
plot (x,-Vx-EG/2+VMAX/2);
plot ([xL xR], [EF EF]);
plot ([0 0], [0.15 VMAX-0.5]);
text(xR* 1.02,(-Vx(200)-EG/2+VMAX/2-.05), 'Ev');
text(xR*1.02,(-Vx(200)+EG/2+VMAX/2-.05),'Ec'); 
text(xR* 1.02, EF-.05,"EF");
grid on;
title("Energy band diagram");
xlabel("Length(um)");
ylabel("Energy States in eV")
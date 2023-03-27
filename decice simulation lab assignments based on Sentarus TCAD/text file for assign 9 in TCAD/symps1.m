% Eqstilibriutn Energy Band Diagram Getseratot
Nv/Si. 3li3K, uondegenetutelY doped step Junctton)
%Control constants
cleft = -3.5e- 4; Nv Leftmost x postiion
nright -xlefL; Nv Rightmost x postttOfl
NAinput (Please enter p_side doping (cm0-3). NA
NDiepot (Please enter n-side doptng (ctno_3), ND =
%Computati055
vbi=ksTnlog((NAND)/nje 2),
xP 5q(2*sueo/qeNDnVbi/(NA*(NA+ND)));
litrspace(Xleft xrighI, 200);
Vxl
Vx 2
=(Vbi_q*ND.*(vNx).021(2*KS*e0)0(n<XI1D(5>O)
=O.5vq*NA.0(xP+x).02/(KSne0)*>_i& x<O);
VxVxl+Vx2; ‘ % V us a functtoe of x
VMAX 3,
%MaainrumPlot Voltage
% Fermi level
%Plot Diagram
close
plot (x,
axis ([xteft
.VcJ-EG/2+VMAX/ 2)
xnight 0 VMAXI);
axis (off); hold on
plot (x, Vx.EG/2+VMAX/2);
222 psi JUNCTION DIODES %ConstaeiS
T=300;
k=8.617e-S;
e08.8 5-l 4
q l.602e-19;
KS1 1.8;
nil.OelO;
EG= 1.12;
Nv Tetnperature in Kelvin
% Boltansaita cottstant (eVIK)
% permittivity of free space (F/cm)
% charge nIl an electron (coal)
Nv Dielectric constant of Si
Nv intrinsic catTier cone, in Siltcon at 300K (ctnt- 3)
Nv Silicon band gap (eV)
cleft = -3.5e- 4; Nv Leftmost x postiion
nright -xlefL; Nv Rightmost x postttOfl
NAinput (Please enter p_side doping (cm0-3). NA
NDiepot (Please enter n-side doptng (ctno_3), ND =
%Computati055
vbi=ksTnlog((NAND)/nje 2),
xP 5q(2*sueo/qeNDnVbi/(NA*(NA+ND)));
litrspace(Xleft xrighI, 200);
Vxl
Vx 2
=(Vbi_q*ND.*(vNx).021(2*KS*e0)0(n<XI1D(5>O)
=O.5vq*NA.0(xP+x).02/(KSne0)*>_i& x<O);
VxVxl+Vx2; ‘ % V us a functtoe of x
VMAX 3,
%MaainrumPlot Voltage
% Fermi level
close
plot (x,
axis ([xteft
.VcJ-EG/2+VMAX/ 2)
xnight 0 VMAXI);
axis (off); hold on
plot (x, Vx.EG/2+VMAX/2);
plot (o, -Vx+VMAX/2,’w:);
plot ([steft oright]. [EF EF]. ‘sc);
plot ([0 Oj. [0.15 VMAX-O.5[, ‘w--’);
text(xleft° I .08,(-Vx( I )+E0I2 + VMAXJ2-.05),’Ec);
iext(xright° I .02,(-Vx(200)+ EG/2± VMAX/2-.05),’Ec’);
teut(xleftdl .08,(-Vx( I )-EG/2+ VMAX/2-.05).’Ev’);
text(nright° I .02,(-Vv(200)-EG/2+ VMAXI2-.05),’Ev’);
text(xleft’ I .08,(-Vr( I )—VMAX/2-.O5),’Ei’);
text(xright° .02. EF-.05;EF’);
set(gcaDefaultTextUntts’,’tsortnaliecd’)
teXt(. 18, Op_side);
text(. 47,0, ‘xO’);
text(. 75.On-side);
sei(gca.’DefaultTextUnits’.’data’)
hold elf
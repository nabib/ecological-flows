%---- Graph the inflow and outflow hydrographs
figure(2)
clf
subplot (2,2,1)
plot (t(1:Ntot),P(1:Ntot),'k-')
hold on
xlabel ('\it{t (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{P(mm)}','fontweight','bold','fontsize',10)

subplot (2,2,2)
plot (t(1:Ntot),Ih1(1:Ntot),'k-')
hold on
xlabel ('\it{t (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{I(m3/d)}','fontweight','bold','fontsize',10)

subplot (2,2,3)
plot (t(1:Ntot),Sd(1:Ntot)/Aplanar/Hmax,'k-')
hold on
xlabel ('\it{t (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{h/H{max}}','fontweight','bold','fontsize',10)

subplot (2,2,4)
plot (t(1:Ntot),Od(1:Ntot),'k-')
xlabel ('\it{t (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{O (m3/d)}','fontweight','bold','fontsize',10)


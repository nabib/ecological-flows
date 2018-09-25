%---- Graph the Unity hydrograph
figure(1)
clf
t_UH=[0:dt:TTmax-dt];
plot(t_UH, UH,'k-','linewidth',2)
xlabel ('\it{t (d)}','fontweight','bold','fontsize',10)
ylabel ('\it{UH (1/d)}','fontweight','bold','fontsize',10)


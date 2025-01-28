function figuraIG(IGu_data, directorio_destino)
fig = figure('Name', 'Input Gains', 'NumberTitle', 'off');
subplot(2,1,1);
plot(IGu_data.tiempo,IGu_data.IGu, 'b', 'LineWidth', 1.5);
hold on
plot(IGu_data.tiempo,IGu_data.IGr, 'r', 'LineWidth', 1.5);
grid on
hold off
xlim([0 inf]);
xlabel('Time $(s)$','Interpreter','latex','FontSize',12);
ylabel('IG $(ms^{-2})$','Interpreter','latex','FontSize',12);
leg1 = legend('$IG_{u}$', '$IG_{r}$');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('Input Gains','Interpreter','latex','FontSize',15);
%% 
subplot(2,1,2);
plot(IGu_data.tiempo,IGu_data.zone, 'b', 'LineWidth', 1.5);
grid on
ylim([-1.1 1.1]);
xlim([0 inf]);
xlabel('Time $(s)$','Interpreter','latex','FontSize',12);
ylabel('Zone  $P_L-P_R$','Interpreter','latex','FontSize',12);
leg1 = legend('Zone');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('Zone','Interpreter','latex','FontSize',15);
% Definir los ticks y las etiquetas personalizadas para el eje Y
yticks([-1 0 1]);
yticklabels({'R-F', 'F-F', 'F-R'});

% Obtener los manejadores de los ejes de todos los subplots
ax = findall(gcf, 'Type', 'axes');
% Enlazar los ejes x de todos los subplots
linkaxes(ax, 'x');

savefig(fullfile(directorio_destino, 'IG.fig'));
end
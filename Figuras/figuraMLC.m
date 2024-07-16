function figuraMLC(error_data, ref_mlc_data, directorio_destino)
fig = figure('Name', 'Desired velocity', 'NumberTitle', 'off');
plot(ref_mlc_data.tiempo,ref_mlc_data.u_d, 'r', 'LineWidth', 0.5);
grid on
ylim([0 1.5]);
xlim([0 inf]);
xlabel('Time $(s)$','Interpreter','latex','FontSize',12);
ylabel('$u_d~(m/s)$','Interpreter','latex','FontSize',12);
leg1 = legend('$u_{des}$');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('Desired Velocity','Interpreter','latex','FontSize',15);
savefig(fullfile(directorio_destino, 'ud.fig'));

%% 
fig = figure('Name', 'Path following errors', 'NumberTitle', 'off');
plot(error_data.tiempo,error_data.xe, 'b', 'LineWidth', 0.5);
hold on
plot(error_data.tiempo,error_data.ye, 'r', 'LineWidth', 0.5);
hold off
grid on
xlim([0 inf]);
xlabel('Time $(s)$','Interpreter','latex','FontSize',12);
ylabel('Error $(m)$','Interpreter','latex','FontSize',12);
leg1 = legend('$x_{e}$ Longitudinal Error','$y_{e}$ Latteral Error');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('Longitudinal and Latteral Error','Interpreter','latex','FontSize',15);
savefig(fullfile(directorio_destino, 'Error_mlc.fig'));

%% 
fig = figure('Name', 'Parameterized variable', 'NumberTitle', 'off');
plot(error_data.tiempo,error_data.w, 'b', 'LineWidth', 0.5);
grid on
xlim([0 inf]);
xlabel('Time $(s)$','Interpreter','latex','FontSize',12);
ylabel('$w$','Interpreter','latex','FontSize',12);
leg1 = legend('$w$');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('Current $w$','Interpreter','latex','FontSize',15);
savefig(fullfile(directorio_destino, 'wvst.fig'));
end
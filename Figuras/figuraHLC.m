function figuraHLC(ref_hlc_data, error_data, w_slave, w_virtual, ref_master, ref_mlc_data, obs_zono,directorio_destino);
%% 
fig = figure('Name', 'Fleet velocity', 'NumberTitle', 'off');

plot(ref_hlc_data.tiempo,ref_hlc_data.u_f, 'r', 'LineWidth', 1.0);
hold on
stairs(ref_master.tiempo, ref_master.U_f, 'b', 'LineWidth', 1.0);
stairs(ref_master.tiempo,ref_master.U_m, 'k', 'LineWidth', 1.0);
stairs(ref_master.tiempo,ref_master.U_s, 'm', 'LineWidth', 1.0);
ylim([0 1.5]);
xlim([0 inf]);
grid on
xlabel('Time $(s)$','Interpreter','latex','FontSize',12);
ylabel('$u_f~(m/s)$','Interpreter','latex','FontSize',12);
leg1 = legend('$u_{fleet}$','$u_{v}$','$u_{m}$','$u_{s}$');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('Fleet Velocity','Interpreter','latex','FontSize',15);
savefig(fullfile(directorio_destino, 'u_fle.fig'));

%% 
fig = figure('Name', 'Fleet W', 'NumberTitle', 'off');
plot(w_virtual.tiempo,w_virtual.w_v, 'k', 'LineWidth', 1.0);
hold on
plot(error_data.tiempo,error_data.w, 'r', 'LineWidth', 1.0);
plot(w_slave.tiempo, w_slave.w_s, 'b', 'LineWidth', 1.0);
xlim([0 inf]);
grid on
xlabel('Time $(s)$','Interpreter','latex','FontSize',12);
ylabel('$w$','Interpreter','latex','FontSize',12);
leg1 = legend('$w_{v}$','$w_{m}$','$w_{s}$');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('Fleet W','Interpreter','latex','FontSize',15);
savefig(fullfile(directorio_destino, 'w_fle.fig'));
%% 
fig = figure('Name', 'U_master', 'NumberTitle', 'off');
plot(ref_mlc_data.tiempo,ref_mlc_data.u_d, 'k', 'LineWidth', 1.0);
hold on
plot(obs_zono.tiempo,obs_zono.u_hat, 'r', 'LineWidth', 1.0);
stairs(ref_master.tiempo, ref_master.U_m, 'b', 'LineWidth', 1.0);
xlim([0 inf]);
grid on
xlabel('Time $(s)$','Interpreter','latex','FontSize',12);
ylabel('$u~(m/s)$','Interpreter','latex','FontSize',12);
leg1 = legend('$u_{d}$','$u_{zono}$','$U_{m}$');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('U_master','Interpreter','latex','FontSize',15);
savefig(fullfile(directorio_destino, 'U_master.fig'));
end


function figuraRefu(ref_llc, obs, obs_liu, angvel_data,linvel_data, directorio_destino)
fig = figure('Name', 'Reference Surge', 'NumberTitle', 'off');
plot(ref_llc.tiempo,ref_llc.u_ref, 'b', 'LineWidth', 0.5);
hold on
plot(obs.tiempo,obs.u_hat, 'r', 'LineWidth', 0.5);
plot(obs_liu.tiempo,obs_liu.u_hat, 'k', 'LineWidth', 0.5);
plot(linvel_data.tiempo,linvel_data.u_imu, 'm', 'LineWidth', 0.5);
hold off
grid on
xlim([0 inf]);
xlabel('Time $(s)$','Interpreter','latex','FontSize',12);
ylabel('Surge $(m~s^{-1})$','Interpreter','latex','FontSize',12);
leg1 = legend('$u_{ref}$','$\widehat{u}_{K_n=10}$','$\widehat{u}_{K_n=1}$','$u_{apm}$');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('Surge controller performance','Interpreter','latex','FontSize',15)
savefig(fullfile(directorio_destino, 'surge_llc.fig'));

%% 
fig = figure('Name', 'Reference Sway', 'NumberTitle', 'off');
plot(obs.tiempo,obs.v_hat, 'r', 'LineWidth', 0.5);
hold on
plot(obs_liu.tiempo,obs_liu.v_hat, 'k', 'LineWidth', 0.5);
plot(linvel_data.tiempo,linvel_data.v_imu, 'm', 'LineWidth', 0.5);
hold off
grid on
xlim([0 inf]);
xlabel('Time $(s)$','Interpreter','latex','FontSize',12);
ylabel('Sway $(m~s^{-1})$','Interpreter','latex','FontSize',12);
leg1 = legend('$\widehat{v}_{K_n=10}$','$\widehat{v}_{K_n=1}$','$v_{apm}$');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('Sway controller performance','Interpreter','latex','FontSize',15)
savefig(fullfile(directorio_destino, 'sway_llc.fig'));

%% 
fig = figure('Name', 'Reference Yaw', 'NumberTitle', 'off');
grid on
plot(ref_llc.tiempo,ref_llc.r_ref, 'b', 'LineWidth', 0.5);
hold on
plot(obs.tiempo,obs.r_hat, 'r', 'LineWidth', 0.5);
plot(obs_liu.tiempo,obs_liu.r_hat, 'k', 'LineWidth', 0.5);
plot(angvel_data.tiempo,angvel_data.r_imu, 'm', 'LineWidth', 0.5);
hold off
grid on
xlim([0 inf]);
xlabel('Time $(s)$','Interpreter','latex','FontSize',12);
ylabel('Yaw $(rad~s^{-1})$','Interpreter','latex','FontSize',12);
leg1 = legend('$r_{ref}$','$\widehat{r}_{K_n=10}$','$\widehat{r}_{K_n=1}$','$r_{apm}$');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('Yaw controller performance','Interpreter','latex','FontSize',15)
savefig(fullfile(directorio_destino, 'yaw_llc.fig'));

%% 
fig = figure('Name', 'Reference Heading', 'NumberTitle', 'off');
plot(ref_llc.tiempo,ref_llc.psi_ref, 'b', 'LineWidth', 0.5);
hold on
plot(obs.tiempo,obs.psi_hat, 'r', 'LineWidth', 0.5);
hold off
grid on
xlim([0 inf]);
xlabel('Time $(s)$','Interpreter','latex','FontSize',12);
ylabel('$\psi~(rad)$','Interpreter','latex','FontSize',12);
leg1 = legend('$\psi_{ref}$','$\widehat{\psi}_{K_n=10}$');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('Heading controller performance','Interpreter','latex','FontSize',15)
savefig(fullfile(directorio_destino, 'head_llc.fig'));
end
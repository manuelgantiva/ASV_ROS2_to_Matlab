function figuraRefu(ref_llc, obs, obs_zono, obs_zono_min,obs_zono_max, angvel_data,linvel_data, directorio_destino)
fig = figure('Name', 'Reference Surge', 'NumberTitle', 'off');
plot(ref_llc.tiempo,ref_llc.u_ref, 'b', 'LineWidth', 1.5);
hold on
plot(obs.tiempo,obs.u_hat, 'r', 'LineWidth', 1.5);
plot(obs_zono.tiempo,obs_zono.u_hat, 'k', 'LineWidth', 1.5);
plot(linvel_data.tiempo,linvel_data.u_imu, 'm', 'LineWidth', 1.5);
plot(obs_zono_min.tiempo,obs_zono_min.u_hat, '--g', 'LineWidth', 1);
plot(obs_zono_max.tiempo,obs_zono_max.u_hat, '--g', 'LineWidth', 1);
hold off
grid on
xlim([0 inf]);
xlabel('Time $(s)$','Interpreter','latex','FontSize',12);
ylabel('Surge $(m~s^{-1})$','Interpreter','latex','FontSize',12);
leg1 = legend('$u_{ref}$','Bejarano et al.','Orihuela el al.','$u_{apm}$');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('Surge controller performance','Interpreter','latex','FontSize',15)
savefig(fullfile(directorio_destino, 'surge_llc.fig'));

%% 
fig = figure('Name', 'Reference Sway', 'NumberTitle', 'off');
plot(obs.tiempo,obs.v_hat, 'r', 'LineWidth', 1.5);
hold on
plot(obs_zono.tiempo,obs_zono.v_hat, 'k', 'LineWidth', 1.5);
plot(linvel_data.tiempo,linvel_data.v_imu, 'm', 'LineWidth', 1.5);
plot(obs_zono_min.tiempo,obs_zono_min.v_hat, '--g', 'LineWidth', 1);
plot(obs_zono_max.tiempo,obs_zono_max.v_hat, '--g', 'LineWidth', 1);
hold off
grid on
xlim([0 inf]);
xlabel('Time $(s)$','Interpreter','latex','FontSize',12);
ylabel('Sway $(m~s^{-1})$','Interpreter','latex','FontSize',12);
leg1 = legend('Bejarano et al.','Orihuela el al.','$v_{apm}$');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('Sway controller performance','Interpreter','latex','FontSize',15)
savefig(fullfile(directorio_destino, 'sway_llc.fig'));

%% 
fig = figure('Name', 'Reference Yaw', 'NumberTitle', 'off');
grid on
plot(ref_llc.tiempo,ref_llc.r_ref, 'b', 'LineWidth', 1.5);
hold on
plot(obs.tiempo,obs.r_hat, 'r', 'LineWidth', 1.5);
plot(obs_zono.tiempo,obs_zono.r_hat, 'k', 'LineWidth', 1.5);
plot(angvel_data.tiempo,angvel_data.r_imu, 'm', 'LineWidth', 1.5);
plot(obs_zono_min.tiempo,obs_zono_min.r_hat, '--g', 'LineWidth', 1);
plot(obs_zono_max.tiempo,obs_zono_max.r_hat, '--g', 'LineWidth', 1);
hold off
grid on
xlim([0 inf]);
xlabel('Time $(s)$','Interpreter','latex','FontSize',12);
ylabel('Yaw $(rad~s^{-1})$','Interpreter','latex','FontSize',12);
leg1 = legend('$r_{ref}$','Bejarano et al.','Orihuela el al.','$r_{apm}$');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('Yaw controller performance','Interpreter','latex','FontSize',15)
savefig(fullfile(directorio_destino, 'yaw_llc.fig'));

%% 
fig = figure('Name', 'Reference Heading', 'NumberTitle', 'off');
plot(ref_llc.tiempo,ref_llc.psi_ref, 'b', 'LineWidth', 1.5);
hold on
plot(obs.tiempo,obs.psi_hat, 'r', 'LineWidth', 1.5);
plot(obs_zono.tiempo,obs_zono.psi_hat, 'k', 'LineWidth', 1.5);
hold off
grid on
xlim([0 inf]);
xlabel('Time $(s)$','Interpreter','latex','FontSize',12);
ylabel('$\psi~(rad)$','Interpreter','latex','FontSize',12);
leg1 = legend('$\psi_{ref}$','Bejarano et al.','Orihuela el al.');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('Heading controller performance','Interpreter','latex','FontSize',15)
savefig(fullfile(directorio_destino, 'head_llc.fig'));
end
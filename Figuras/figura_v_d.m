function figura_v_d(angvel_data, linvel_data, obs_guille, obs_liu, obs_zono, obs_zono_min,obs_zono_max, directorio_destino)
fig = figure('Name', 'Velocities and disturbances', 'NumberTitle', 'off');
subplot(3,2,5);
plot(angvel_data.tiempo,angvel_data.r_imu, 'b', 'LineWidth', 1);
hold on
plot(obs_guille.tiempo,obs_guille.r_hat, 'r', 'LineWidth', 1);
plot(obs_liu.tiempo,obs_liu.r_hat, 'm', 'LineWidth', 1);
plot(obs_zono.tiempo,obs_zono.r_hat, 'k', 'LineWidth', 1);
plot(obs_zono_min.tiempo,obs_zono_min.r_hat, '--g', 'LineWidth', 1);
plot(obs_zono_max.tiempo,obs_zono_max.r_hat, '--g', 'LineWidth', 1);
xlim([0 inf]);
grid on
hold off
xlabel('Time $(s)$','Interpreter','latex','FontSize',12);
ylabel('Yaw $(rad~s^{-1})$','Interpreter','latex','FontSize',12);
leg1 = legend('Measured $r$','Bejarano et al.','Liu el al.','Orihuela el al.');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('Estimation of $r$','Interpreter','latex','FontSize',15)

%%
subplot(3,2,1);
plot(linvel_data.tiempo,linvel_data.u_imu, 'b', 'LineWidth', 0.5);
hold on
plot(obs_guille.tiempo,obs_guille.u_hat, 'r', 'LineWidth', 0.5);
plot(obs_liu.tiempo,obs_liu.u_hat, 'm', 'LineWidth', 0.5);
plot(obs_zono.tiempo,obs_zono.u_hat, 'k', 'LineWidth', 0.5);
plot(obs_zono_min.tiempo,obs_zono_min.u_hat, '--g', 'LineWidth', 0.5);
plot(obs_zono_max.tiempo,obs_zono_max.u_hat, '--g', 'LineWidth', 0.5);
xlim([0 inf]);
grid on
hold off
xlabel('Time $(s)$','Interpreter','latex','FontSize',12);
ylabel('Surge $(m~s^{-1})$','Interpreter','latex','FontSize',12);
leg1 = legend('Measured $u$','Bejarano et al.','Liu el al.','Orihuela el al.');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('Estimation of $u$','Interpreter','latex','FontSize',15)
%%
subplot(3,2,3);
plot(linvel_data.tiempo,linvel_data.v_imu, 'b', 'LineWidth', 0.5);
hold on
plot(obs_guille.tiempo,obs_guille.v_hat, 'r', 'LineWidth', 0.5);
plot(obs_liu.tiempo,obs_liu.v_hat, 'm', 'LineWidth', 0.5);
plot(obs_zono.tiempo,obs_zono.v_hat, 'k', 'LineWidth', 0.5);
plot(obs_zono_min.tiempo,obs_zono_min.v_hat, '--g', 'LineWidth', 0.5);
plot(obs_zono_max.tiempo,obs_zono_max.v_hat, '--g', 'LineWidth', 0.5);
xlim([0 inf]);
grid on
hold off
xlabel('Time $(s)$','Interpreter','latex','FontSize',12);
ylabel('Sway $(m~s^{-1})$','Interpreter','latex','FontSize',12);
leg1 = legend('Measured $v$','Bejarano et al.','Liu el al.','Orihuela el al.');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('Estimation of $v$','Interpreter','latex','FontSize',15)
%% 
subplot(3,2,2);
grid on
plot(obs_guille.tiempo,obs_guille.su_hat, 'r', 'LineWidth', 0.5);
hold on
plot(obs_liu.tiempo,obs_liu.su_hat, 'm', 'LineWidth', 0.5);
plot(obs_zono.tiempo,obs_zono.su_hat, 'k', 'LineWidth', 0.5);
plot(obs_zono_min.tiempo,obs_zono_min.su_hat, '--g', 'LineWidth', 0.5);
plot(obs_zono_max.tiempo,obs_zono_max.su_hat, '--g', 'LineWidth', 0.5);
xlim([0 inf]);
grid on
hold off
xlabel('Time $(s)$','Interpreter','latex','FontSize',12);
ylabel('$\sigma_u~(m~s^{-2})$','Interpreter','latex','FontSize',12);
leg1 = legend('Bejarano et al.','Liu el al.','Orihuela el al.');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('Estimation of $\sigma_u$','Interpreter','latex','FontSize',15)
%% 
subplot(3,2,4);
grid on
plot(obs_guille.tiempo,obs_guille.sv_hat, 'r', 'LineWidth', 0.5);
hold on
plot(obs_liu.tiempo,obs_liu.sv_hat, 'm', 'LineWidth', 0.5);
plot(obs_zono.tiempo,obs_zono.sv_hat, 'k', 'LineWidth', 0.5);
plot(obs_zono_min.tiempo,obs_zono_min.sv_hat, '--g', 'LineWidth', 0.5);
plot(obs_zono_max.tiempo,obs_zono_max.sv_hat, '--g', 'LineWidth', 0.5);
xlim([0 inf]);
grid on
hold off
xlabel('Time $(s)$','Interpreter','latex','FontSize',12);
ylabel('$\sigma_v~(m~s^{-2})$','Interpreter','latex','FontSize',12);
leg1 = legend('Bejarano et al.','Liu el al.','Orihuela el al.');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('Estimation of $\sigma_v$','Interpreter','latex','FontSize',15)
%% 
subplot(3,2,6);
grid on
plot(obs_guille.tiempo,obs_guille.sr_hat, 'r', 'LineWidth', 0.5);
hold on
plot(obs_liu.tiempo,obs_liu.sr_hat, 'm', 'LineWidth', 0.5);
plot(obs_zono.tiempo,obs_zono.sr_hat, 'k', 'LineWidth', 0.5);
plot(obs_zono_min.tiempo,obs_zono_min.sr_hat, '--g', 'LineWidth', 0.5);
plot(obs_zono_max.tiempo,obs_zono_max.sr_hat, '--g', 'LineWidth', 0.5);
xlim([0 inf]);
grid on
hold off
xlabel('Time $(s)$','Interpreter','latex','FontSize',12);
ylabel('$\sigma_r~(rad~s^{-2})$','Interpreter','latex','FontSize',12);
leg1 = legend('Bejarano et al.','Liu el al.','Orihuela el al.');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('Estimation of $\sigma_r$','Interpreter','latex','FontSize',15)


% Obtener los manejadores de los ejes de todos los subplots
ax = findall(gcf, 'Type', 'axes');
% Enlazar los ejes x de todos los subplots
linkaxes(ax, 'x');
savefig(fullfile(directorio_destino, 'Vel_dist.fig'));
end
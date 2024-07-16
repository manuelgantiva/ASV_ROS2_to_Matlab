function figura_accel(accel_data, angvel_data, obs_guille, linvel_data, directorio_destino)
%% Acceleration
fig = figure('Name', 'Accelerations data', 'NumberTitle', 'off');
subplot(2,1,1);
plot(accel_data.tiempo,accel_data.a_u, 'b', 'LineWidth', 0.5);
hold on
plot(accel_data.tiempo, accel_data.a_v, 'r', 'LineWidth', 0.5);
plot(accel_data.tiempo, accel_data.a_z, 'k', 'LineWidth', 0.5);
grid on
hold off
xlim([0 inf]);
xlabel('Time $(s)$','Interpreter','latex','FontSize',12);
ylabel('Accelerations $(ms^{-2})$','Interpreter','latex','FontSize',12);
leg1 = legend('Measured $a_{u}$','Measured $a_{v}$','Measured $a_{z}$');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('IMU measured accelerations','Interpreter','latex','FontSize',15)
%% Velocities
subplot(2,1,2);
plot(obs_guille.tiempo,obs_guille.u_hat, 'r', 'LineWidth', 0.5);
hold on
plot(obs_guille.tiempo,obs_guille.v_hat, 'b', 'LineWidth', 0.5)
plot(linvel_data.tiempo,linvel_data.u_imu, 'k', 'LineWidth', 0.5);
plot(linvel_data.tiempo,linvel_data.v_imu, 'm', 'LineWidth', 0.5);
hold off
grid on
xlim([0 inf]);
xlabel('Time $(s)$','Interpreter','latex','FontSize',12);
ylabel('Velocities $(m~s^{-1})$','Interpreter','latex','FontSize',12);
leg1 = legend('Surge obs','Sway obs','Surge apm','Sway apm');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('Surge and sway','Interpreter','latex','FontSize',15)

% Obtener los manejadores de los ejes de todos los subplots
ax = findall(gcf, 'Type', 'axes');
% Enlazar los ejes x de todos los subplots
linkaxes(ax, 'x');
savefig(fullfile(directorio_destino, 'imu_accel.fig'));
end


function figura_accel(accel_data, angvel_data, obs_guille, linvel_data, directorio_destino)
%% Acceleration
figure;
subplot(2,1,1);
grid on
plot(accel_data.tiempo,accel_data.a_u, 'b', 'LineWidth', 0.5);
hold on
plot(accel_data.tiempo, accel_data.a_v, 'r', 'LineWidth', 0.5);
plot(accel_data.tiempo, accel_data.a_z, 'k', 'LineWidth', 0.5);
grid on
hold off
xlabel('Time~(s)','Interpreter','latex','FontSize',12);
ylabel('Accelaration $(m/s^{2})$','Interpreter','latex','FontSize',12);
% xlim([310 350])
% ylim([-5 4])
leg1 = legend('Measured $a_{u}$','Measured $a_{v}$','Measured $a_{z}$');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title(['$IMU~measured~accelerations$'],'Interpreter','latex','FontSize',15)
%% Velocities
subplot(2,1,2);
plot(obs_guille.tiempo,obs_guille.u_hat, 'r', 'LineWidth', 0.5);
hold on
plot(obs_guille.tiempo,obs_guille.v_hat, 'b', 'LineWidth', 0.5)
plot(linvel_data.tiempo,linvel_data.u_imu, 'k', 'LineWidth', 0.5);
plot(linvel_data.tiempo,linvel_data.v_imu, 'm', 'LineWidth', 0.5);
hold off
grid on
%
xlabel('$Time~(s)$','Interpreter','latex','FontSize',12);
ylabel('Surje $(m~s^{-1})$','Interpreter','latex','FontSize',12);
% legend('Medido', 'Bejarano', 'Liu');
leg1 = legend('$Surge~obs$','$Sway~obs$','$Surge~apm$','$Sway~apm$');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('$Actual~and~Estimation~values~of~Surje$','Interpreter','latex','FontSize',15)
% xlabel('Tiempo (s)');
% ylabel('Surge u (m/s) ');
% legend('Surge ref', 'Surge estimado kn = 1','Surge estimado liu kn = 10', 'Surge apm');
% title ('Actual and Estimation values of Surje');
savefig(fullfile(directorio_destino, 'apm_surge.fig'));




savefig(fullfile(directorio_destino, 'imu_accel.fig'));
end


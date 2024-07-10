function figuraRefu(ref_llc, obs, obs_liu, angvel_data,linvel_data, directorio_destino)
figure;
grid on
plot(ref_llc.tiempo,ref_llc.u_ref, 'b', 'LineWidth', 0.5);
hold on
plot(obs.tiempo,obs.u_hat, 'r', 'LineWidth', 0.5);
plot(obs_liu.tiempo,obs_liu.u_hat, 'k', 'LineWidth', 0.5);
plot(linvel_data.tiempo,linvel_data.u_imu, 'm', 'LineWidth', 0.5);
hold off
grid on
%
xlabel('$Time~(s)$','Interpreter','latex','FontSize',12);
ylabel('$Surje~(m~s^{-1})$','Interpreter','latex','FontSize',12);
% legend('Medido', 'Bejarano', 'Liu');
leg1 = legend('$Surge~ref~u$','$Surge~estimado~K_n~=~1$','$Surge~estimad~o~liu~k_n~=~10$','$Surge~apm$');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('$Actual~and~Estimation~values~of~Surje$','Interpreter','latex','FontSize',15)
% xlabel('Tiempo (s)');
% ylabel('Surge u (m/s) ');
% legend('Surge ref', 'Surge estimado kn = 1','Surge estimado liu kn = 10', 'Surge apm');
% title ('Actual and Estimation values of Surje');
savefig(fullfile(directorio_destino, 'apm_surge.fig'));

%% 
figure;
grid on
plot(obs.tiempo,obs.v_hat, 'r', 'LineWidth', 0.5);
hold on
plot(obs_liu.tiempo,obs_liu.v_hat, 'k', 'LineWidth', 0.5);
hold on
plot(linvel_data.tiempo,linvel_data.v_imu, 'm', 'LineWidth', 0.5);
hold off
grid on
%
xlabel('$Time~(s)$','Interpreter','latex','FontSize',12);
ylabel('$Sway~(m~s^{-1})$','Interpreter','latex','FontSize',12);
% legend('Medido', 'Bejarano', 'Liu');
leg1 = legend('$Sway~estimado~K_n~=~1$','$Sway~estimad~o~liu~k_n~=~10$','$Sway~apm$');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('$Actual~and~Estimation~values~of~Sway$','Interpreter','latex','FontSize',15)
% xlabel('Tiempo (s)');
% ylabel('Surge u (m/s) ');
% legend('Surge ref', 'Surge estimado kn = 1','Surge estimado liu kn = 10', 'Surge apm');
% title ('Actual and Estimation values of Surje');
savefig(fullfile(directorio_destino, 'apm_sway.fig'));

%% 

figure;
grid on
plot(ref_llc.tiempo,ref_llc.r_ref, 'b', 'LineWidth', 0.5);
hold on
plot(obs.tiempo,obs.r_hat, 'r', 'LineWidth', 0.5);
plot(obs_liu.tiempo,obs_liu.r_hat, 'k', 'LineWidth', 0.5);
plot(angvel_data.tiempo,angvel_data.r_imu, 'm', 'LineWidth', 0.5);
hold off
grid on
%
xlabel('$Time~(s)$','Interpreter','latex','FontSize',12);
ylabel('$Yaw~(rad~s^{-1})$','Interpreter','latex','FontSize',12);
% legend('Medido', 'Bejarano', 'Liu');
leg1 = legend('$Yaw~ref~r$','$Yaw~estimado~K_n~=~1$','$Yaw~estimad~o~liu~k_n~=~10$','$Yaw~apm$');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('$Actual~and~Estimation~values~of~Yaw$','Interpreter','latex','FontSize',15)
% xlabel('Tiempo (s)');
% ylabel('yaw u (rad/s) ');
% legend('Yaw ref', 'Yaw estimado kn = 1','Yaw estimado liu kn = 10','Yaw imu');
% title ('Actual and Estimation values of Yaw(rad/sec)');
savefig(fullfile(directorio_destino, 'apm_yaw.fig'));

%% 
figure;
grid on
plot(ref_llc.tiempo,ref_llc.psi_ref, 'b', 'LineWidth', 0.5);
hold on
plot(obs.tiempo,obs.psi_hat, 'r', 'LineWidth', 0.5);
hold off
grid on
%
xlabel('$Time~(s)$','Interpreter','latex','FontSize',12);
ylabel('$Heading~(rad)$','Interpreter','latex','FontSize',12);
% legend('Medido', 'Bejarano', 'Liu');
leg1 = legend('$Heading~ref~r$','$Heading~estimado~K_n~=~1$');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('$Reference~and~Estimation~values~of~Heading$','Interpreter','latex','FontSize',15)
% xlabel('Tiempo (s)');
% ylabel('heading (rad) ');
% legend('heading ref', 'heading estimado');
% title ('Actual and Estimation values of Heading(rad)');
savefig(fullfile(directorio_destino, 'apm_hed.fig'));
end
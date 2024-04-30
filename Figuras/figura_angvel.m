function figura_angvel(angvel_data, linvel_data, obs_guille, obs_liu, directorio_destino)

subplot(2,2,1);
grid on
plot(angvel_data.tiempo,angvel_data.r_imu, 'b', 'LineWidth', 1);
hold on
plot(obs_guille.tiempo,obs_guille.r_hat, 'r', 'LineWidth', 1);
plot(obs_liu.tiempo,obs_liu.r_hat, 'm', 'LineWidth', 1);
% xlim([310 350])
% ylim([-2 2])
grid on
hold off
xlabel('$Time~(s)$','Interpreter','latex','FontSize',12);
ylabel('$Yaw~(rad~s^{-1})$','Interpreter','latex','FontSize',12);
% legend('Medido', 'Bejarano', 'Liu');
leg1 = legend('$Measured~r$','$Bejarano~et~al.$','$Liu~el~al.$');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('$Estimation~of~r$','Interpreter','latex','FontSize',15)
% title('Velocidad Angular')

% savefig(fullfile(directorio_destino, 'velocidad_angular.fig'));

%%
subplot(2,2,2);
grid on
plot(linvel_data.tiempo,linvel_data.u_imu, 'b', 'LineWidth', 0.5);
hold on
plot(obs_guille.tiempo,obs_guille.u_hat, 'r', 'LineWidth', 0.5);
plot(obs_liu.tiempo,obs_liu.u_hat, 'm', 'LineWidth', 0.5);
% xlim([310 350])
% ylim([-2 2])
grid on
hold off
xlabel('$Time~(s)$','Interpreter','latex','FontSize',12);
ylabel('$Surge~(m~s^{-1})$','Interpreter','latex','FontSize',12);
% legend('Medido', 'Bejarano', 'Liu');
leg1 = legend('$Measured~u$','$Bejarano~et~al.$','$Liu~el~al.$');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('$Estimation~of~u$','Interpreter','latex','FontSize',15)
% title('Velocidad Angular')

% savefig(fullfile(directorio_destino, 'velocidad_linear.fig'))

%% 
subplot(2,2,4);
grid on
plot(obs_guille.tiempo,obs_guille.su_hat, 'r', 'LineWidth', 0.5);
hold on
plot(obs_liu.tiempo,obs_liu.su_hat, 'm', 'LineWidth', 0.5);
% xlim([310 350])
% ylim([-2 2])
grid on
hold off
xlabel('$Time~(s)$','Interpreter','latex','FontSize',12);
ylabel('$Surge~(m~s^{-2})$','Interpreter','latex','FontSize',12);
% legend('Medido', 'Bejarano', 'Liu');
leg1 = legend('$Bejarano~et~al.$','$Liu~el~al.$');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('$Estimation~of~sigma_u$','Interpreter','latex','FontSize',15)
% title('Velocidad Angular')

% savefig(fullfile(directorio_destino, 'sigma_u.fig'));

%% 
subplot(2,2,3);
grid on
plot(obs_guille.tiempo,obs_guille.sr_hat, 'r', 'LineWidth', 0.5);
hold on
plot(obs_liu.tiempo,obs_liu.sr_hat, 'm', 'LineWidth', 0.5);
% xlim([310 350])
% ylim([-2 2])
grid on
hold off
xlabel('$Time~(s)$','Interpreter','latex','FontSize',12);
ylabel('$Yaw~(rad~s^{-2})$','Interpreter','latex','FontSize',12);
% legend('Medido', 'Bejarano', 'Liu');
leg1 = legend('$Bejarano~et~al.$','$Liu~el~al.$');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('$Estimation~of~sigma_r$','Interpreter','latex','FontSize',15)
% title('Velocidad Angular')

savefig(fullfile(directorio_destino, 'sigma_r.fig'));

end
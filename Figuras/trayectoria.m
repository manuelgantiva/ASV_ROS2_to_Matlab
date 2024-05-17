function trayectoria( pose_data, pose_data_obs, pose_data_liu, directorio_destino, path)

% [x_total, y_total] = trayectoria_loyola1(path);
% [x_total, y_total] = trayectoria_loyola2(path);
[x_total, y_total] = trayectoria_alamillo1(path);

figure;
grid on
plot(pose_data.y, pose_data.x, 'b', 'LineWidth', 1);
hold on
grid on
plot(pose_data.y(1,1), pose_data.x(1,1), '-p','Color','c', 'LineWidth', 1)
plot(pose_data.y(end,1), pose_data.x(end,1), '-p', 'Color','c','LineWidth', 1);
plot(pose_data_obs.y_hat, pose_data_obs.x_hat, 'r', 'LineWidth', 1);
plot(pose_data_liu.y_hat, pose_data_liu.x_hat, 'g', 'LineWidth', 1);
plot(x_total, y_total, 'k', 'LineWidth', 0.5);
axis('equal')
hold off
xlabel('$Y~(m)$','Interpreter','latex','FontSize',12);
ylabel('$X~(m)$','Interpreter','latex','FontSize',12);
% legend('Medido', 'Bejarano', 'Liu');
leg1 = legend('$Dron~1$','$Start$','$Yaw~estimad~o~liu~k_n~=~1$','$Yaw~estimad~o~liu~k_n~=~10$','$Desired~Path$');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('$Trajectory$','Interpreter','latex','FontSize',15)
% xlabel('y');
% ylabel('x');
% legend('Dron 1','Start','End','Observer Kn = 1','Observer Kn = 10','Desired Path');
% title('Trajectory')
savefig(fullfile(directorio_destino, 'Trajectory.fig'));
end
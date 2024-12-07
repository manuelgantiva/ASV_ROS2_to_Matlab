function trayectoria( pose_data, pose_data_obs, pose_data_liu, directorio_destino, path,lake)
% Lake = 0 Mapa Lago de la Vida Grande
% Lake = 1 Mapa Lago del Alamillo Izquierda
% Lake = 2 Mapa Lago del Alamillo Derecha
% Lake = 3 Mapa Lago de la Vida Pequeño
if lake == 0
    % Trayectorias parametrizadas
    [x_total, y_total] = trayectoria_loyola1(path);
elseif lake == 1
    % Trayectorias parametrizadas
    [x_total, y_total] = trayectoria_alamillo1(path);
elseif lake == 2
    % Trayectorias parametrizadas
    [x_total, y_total] = trayectoria_alamillo1(path);
elseif lake == 3
    % Trayectorias parametrizadas
    [x_total, y_total] = trayectoria_loyola2(path);
elseif lake == 4
    % Trayectorias parametrizadas
    [x_total, y_total] = trayectoria_simulation(path);
end

fig = figure('Name', 'Trajectory', 'NumberTitle', 'off');
plot(pose_data.y, pose_data.x, 'b', 'LineWidth', 1);
hold on
plot(pose_data.y(1,1), pose_data.x(1,1), '^','Color','y', 'LineWidth', 1.5,'MarkerFaceColor','y' )
plot(pose_data.y(end,1), pose_data.x(end,1), 'o', 'Color','m','LineWidth', 1.5, 'MarkerFaceColor','m');
plot(pose_data_obs.y_hat, pose_data_obs.x_hat, 'r', 'LineWidth', 1);
plot(pose_data_liu.y_hat, pose_data_liu.x_hat, 'g', 'LineWidth', 1);
plot(x_total, y_total, 'k', 'LineWidth', 0.5);
axis('equal')
grid on
hold off
xlabel('$x(m)$','Interpreter','latex','FontSize',12);
ylabel('$y(m)$','Interpreter','latex','FontSize',12);
leg1 = legend('GPS','Start','End','$Pose_{K_n=10}$','$Pose_{K_n=1}$','$Path_{d}$');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('$Trajectory$','Interpreter','latex','FontSize',15)
savefig(fullfile(directorio_destino, 'Trajectory.fig'));
end
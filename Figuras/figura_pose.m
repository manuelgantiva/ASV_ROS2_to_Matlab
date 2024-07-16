function figura_pose(pose_data, pose_data_obs, pose_data_liu, directorio_destino)
% figura t-x
fig = figure('Name', 'Positions', 'NumberTitle', 'off');
subplot(3,1,1);
plot(pose_data.tiempo,pose_data.x, 'b', 'LineWidth', 0.5);
hold on
plot(pose_data_obs.tiempo, pose_data_obs.x_hat, 'r', 'LineWidth', 0.5);
plot(pose_data_liu.tiempo,pose_data_liu.x_hat, 'g', 'LineWidth', 0.5);
xlim([0 inf]);
grid on
hold off
xlabel('Time $(s)$','Interpreter','latex','FontSize',12);
ylabel('$x~(m)$','Interpreter','latex','FontSize',12);
leg1 = legend('Measured $x$','Bejarano~et~al.','Liu~el~al.');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('Estimation of the position x','Interpreter','latex','FontSize',15)
axis tight
hold off;

%% figura t-y
subplot(3,1,2);
grid on
plot(pose_data.tiempo,pose_data.y, 'b', 'LineWidth', 0.5);
hold on
plot(pose_data_obs.tiempo, pose_data_obs.y_hat, 'r', 'LineWidth', 0.5);
plot(pose_data_liu.tiempo,pose_data_liu.y_hat, 'g', 'LineWidth', 0.5);
xlim([0 inf]);
grid on
hold off
xlabel('Time $(s)$','Interpreter','latex','FontSize',12);
ylabel('$y~(m)$','Interpreter','latex','FontSize',12);
leg1 = legend('Measured $y$','Bejarano et al.','Liu el al.');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('Estimation of the position $y$','Interpreter','latex','FontSize',15)
axis tight
hold off;
grid on

%% figura t-psi
subplot(3,1,3);
plot(pose_data.tiempo,pose_data.psi, 'b', 'LineWidth', 0.5);
hold on
plot(pose_data_obs.tiempo, pose_data_obs.psi_hat, 'r', 'LineWidth', 0.5);
plot(pose_data_liu.tiempo,pose_data_liu.psi_hat, 'g', 'LineWidth', 0.5);
grid on
hold off
xlabel('Time $(s)$','Interpreter','latex','FontSize',12);
ylabel('Heading $(rad)$','Interpreter','latex','FontSize',12);
xlim([0 inf]);
leg1 = legend('Measured $\psi$','Bejarano et al.','Liu el al.');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('Estimation of the heading $\psi$','Interpreter','latex','FontSize',15)
axis tight
hold off;


% Obtener los manejadores de los ejes de todos los subplots
ax = findall(gcf, 'Type', 'axes');
% Enlazar los ejes x de todos los subplots
linkaxes(ax, 'x');
savefig(fullfile(directorio_destino, 'tiempo_obs.fig'));
end
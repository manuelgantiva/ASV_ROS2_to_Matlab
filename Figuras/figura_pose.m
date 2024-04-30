function figura_pose(pose_data, pose_data_obs, pose_data_liu, directorio_destino)
% figura t-x
figure;
grid on
subplot(2,1,1);
plot(pose_data.tiempo,pose_data.x, 'b', 'LineWidth', 0.5);
hold on
plot(pose_data_obs.tiempo, pose_data_obs.x_hat, 'r', 'LineWidth', 0.5);
plot(pose_data_liu.tiempo,pose_data_liu.x_hat, 'g', 'LineWidth', 0.5);
% xlim([310 350])
% ylim([13 21])
grid on
hold off
xlabel('$Time~(s)$','Interpreter','latex','FontSize',12);
ylabel('$x~(m)$','Interpreter','latex','FontSize',12);
% legend('Medido', 'Bejarano', 'Liu');
leg1 = legend('$Measured~x$','$Bejarano~et~al.$','$Liu~el~al.$');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('$Estimation~of~the~position~x$','Interpreter','latex','FontSize',15)

% axes('position',[.65 .175 .25 .25])     % Posición de la nueva cajita para la gráfica de detalle (no muy importante ya que luego se puede mover manualmente a donde se quiera y redimensionar la nueva gráfica)
% box on                                  % Para poner líneas de una caja alrededor de los nuevos ejes 
% x = dato1(:,end);
% y = dato1(:,1);
% x2 =dato2(:,end);
% y2 =dato2(:,1);
% x3 =dato3(:,end);
% y3 =dato3(:,1);
% indexOfInterestx = (x <= 321) & (x >= 320); % Rango de x para la gráfica de detalle (también se puede poner un rango de y)
% %indexOfInteresty = (y <= 21) & (y >= 13);
% plot(x2(indexOfInterestx),y2(indexOfInterestx), 'r', 'LineWidth', 1);
% hold on
% plot(x3(indexOfInterestx),y3(indexOfInterestx), 'g', 'LineWidth', 1);
% plot(x(indexOfInterestx),y(indexOfInterestx),'b-','LineWidth',1);
% set(gca,'FontSize',12);
% grid on;
axis tight
hold off;
grid on

savefig(fullfile(directorio_destino, 'tiempo_x.fig'));
%% figura t-y
subplot(2,1,2);
grid on
plot(pose_data.tiempo,pose_data.y, 'b', 'LineWidth', 0.5);
hold on
plot(pose_data_obs.tiempo, pose_data_obs.y_hat, 'r', 'LineWidth', 0.5);
plot(pose_data_liu.tiempo,pose_data_liu.y_hat, 'g', 'LineWidth', 0.5);
% xlim([310 350])
% ylim([0 30])
grid on
hold off
xlabel('$Time~(s)$','Interpreter','latex','FontSize',12);
ylabel('$y~(m)$','Interpreter','latex','FontSize',12);
% legend('Medido', 'Bejarano', 'Liu');
leg1 = legend('$Measured~y$','$Bejarano~et~al.$','$Liu~el~al.$');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('$Estimation~of~the~position~y$','Interpreter','latex','FontSize',15)

% axes('position',[.65 .175 .25 .25])     % Posición de la nueva cajita para la gráfica de detalle (no muy importante ya que luego se puede mover manualmente a donde se quiera y redimensionar la nueva gráfica)
% box on                                  % Para poner líneas de una caja alrededor de los nuevos ejes 
% x = dato1(:,end);
% y = dato1(:,2);
% x2 =dato2(:,end);
% y2 =dato2(:,2);
% x3 =dato3(:,end);
% y3 =dato3(:,2);
% indexOfInterestx = (x <= 321) & (x >= 320); % Rango de x para la gráfica de detalle (también se puede poner un rango de y)
% %indexOfInteresty = (y <= 21) & (y >= 13);
% plot(x2(indexOfInterestx),y2(indexOfInterestx), 'r', 'LineWidth', 1);
% hold on
% plot(x3(indexOfInterestx),y3(indexOfInterestx), 'g', 'LineWidth', 1);
% plot(x(indexOfInterestx),y(indexOfInterestx),'b-','LineWidth',1);
% set(gca,'FontSize',12);
% grid on;
axis tight
hold off;
grid on

savefig(fullfile(directorio_destino, 'tiempo_y.fig'));
%% figura t-psi
figure;
grid on
plot(pose_data.tiempo,pose_data.psi, 'b', 'LineWidth', 0.5);
hold on
plot(pose_data_obs.tiempo, pose_data_obs.psi_hat, 'r', 'LineWidth', 0.5);
plot(pose_data_liu.tiempo,pose_data_liu.psi_hat, 'g', 'LineWidth', 0.5);
grid on
hold off
xlabel('Time~(s)','Interpreter','latex','FontSize',12);
ylabel('Heading~(rad)','Interpreter','latex','FontSize',12);
% xlim([310 350])
% ylim([-5 4])
% legend('Medido', 'Bejarano', 'Liu');
leg1 = legend('$Measured~psi$','$Bejarano~et~al.$','$Liu~el~al.$');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('$Estimation~of~the~heading~\psi$','Interpreter','latex','FontSize',15)

% axes('position',[.65 .175 .25 .25])     % Posición de la nueva cajita para la gráfica de detalle (no muy importante ya que luego se puede mover manualmente a donde se quiera y redimensionar la nueva gráfica)
% box on                                  % Para poner líneas de una caja alrededor de los nuevos ejes 
% x = dato1(:,end);
% y = dato1(:,3);
% x2 =dato2(:,end);
% y2 =dato2(:,3);
% x3 =dato3(:,end);
% y3 =dato3(:,3);
% indexOfInterestx = (x <= 321) & (x >= 320); % Rango de x para la gráfica de detalle (también se puede poner un rango de y)
% % indexOfInteresty = (y <= 1.4) & (y >= 1);
% plot(x2(indexOfInterestx),y2(indexOfInterestx), 'r', 'LineWidth', 1);
% hold on
% plot(x3(indexOfInterestx),y3(indexOfInterestx), 'g', 'LineWidth', 1);
% plot(x(indexOfInterestx),y(indexOfInterestx),'b-','LineWidth',1);
% set(gca,'FontSize',12);
% grid on;
axis tight
hold off;

savefig(fullfile(directorio_destino, 'tiempo_heading.fig'));
%% 

% %% figura t-sig
% figure;
% plot(pose_data_obs.tiempo, pose_data_obs.psi_hat, 'r', 'LineWidth', 0.5);
% plot(pose_data_liu.tiempo,pose_data_liu.psi_hat, 'g', 'LineWidth', 0.5);
% grid on
% hold off
% xlabel('Time~(s)','Interpreter','latex','FontSize',12);
% ylabel('Heading~(rad)','Interpreter','latex','FontSize',12);
% % xlim([310 350])
% % ylim([-5 4])
% % legend('Medido', 'Bejarano', 'Liu');
% leg1 = legend('$Measured~x$','$Bejarano~et~al.$','$Liu~el~al.$');
% set(leg1,'Interpreter','latex');
% set(leg1,'FontSize',10);
% title('$Estimation~of~the~heading~\psi$','Interpreter','latex','FontSize',15)
% 
% % axes('position',[.65 .175 .25 .25])     % Posición de la nueva cajita para la gráfica de detalle (no muy importante ya que luego se puede mover manualmente a donde se quiera y redimensionar la nueva gráfica)
% % box on                                  % Para poner líneas de una caja alrededor de los nuevos ejes 
% % x = dato1(:,end);
% % y = dato1(:,3);
% % x2 =dato2(:,end);
% % y2 =dato2(:,3);
% % x3 =dato3(:,end);
% % y3 =dato3(:,3);
% % indexOfInterestx = (x <= 321) & (x >= 320); % Rango de x para la gráfica de detalle (también se puede poner un rango de y)
% % % indexOfInteresty = (y <= 1.4) & (y >= 1);
% % plot(x2(indexOfInterestx),y2(indexOfInterestx), 'r', 'LineWidth', 1);
% % hold on
% % plot(x3(indexOfInterestx),y3(indexOfInterestx), 'g', 'LineWidth', 1);
% % plot(x(indexOfInterestx),y(indexOfInterestx),'b-','LineWidth',1);
% % set(gca,'FontSize',12);
% % grid on;
% axis tight
% hold off;
% 
% savefig(fullfile(directorio_destino, 'tiempo_heading.fig'));

end
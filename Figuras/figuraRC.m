function figuraRC(RC_data_out, RC_data_over, directorio_destino)
figure;
plot(RC_data_out.tiempo,RC_data_out.left, 'b', 'LineWidth', 0.5);
hold on
grid on
plot(RC_data_out.tiempo,RC_data_out.right, 'r', 'LineWidth', 0.5);
plot(RC_data_over.tiempo,RC_data_over.right, 'g', 'LineWidth', 0.5);
plot(RC_data_over.tiempo,RC_data_over.left, 'k', 'LineWidth', 0.5);
hold off
ylim([1100 1950])
%
xlabel('$Time~(s)$','Interpreter','latex','FontSize',12);
ylabel('$PWM~(RPM)$','Interpreter','latex','FontSize',12);
% legend('Medido', 'Bejarano', 'Liu');
leg1 = legend('$PWM_L$','$PWM_R$');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('$Thruster~Signal$','Interpreter','latex','FontSize',15);
%title('$Thruster~Speed$','latex','FontSize',15)
% xlabel('Tiempo (s)');
% ylabel('PWM ');
% legend('RC_L (RPM)', 'RC_R (RPM)');
savefig(fullfile(directorio_destino, 'RC.fig'));
end
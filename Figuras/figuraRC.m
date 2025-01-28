function figuraRC(RC_data_out, RC_data_over, directorio_destino)
fig = figure('Name', 'PWM Signals', 'NumberTitle', 'off');
plot(RC_data_out.tiempo,RC_data_out.left, 'b', 'LineWidth', 1.5);
hold on
grid on
plot(RC_data_out.tiempo,RC_data_out.right, 'r', 'LineWidth', 1.5);
plot(RC_data_over.tiempo,RC_data_over.right, 'g', 'LineWidth', 1.5);
plot(RC_data_over.tiempo,RC_data_over.left, 'k', 'LineWidth', 1.5);
hold off
ylim([1100 1950])
xlim([0 inf]);
%
xlabel('Time $(s)$','Interpreter','latex','FontSize',12);
ylabel('PWM $(RPM)$','Interpreter','latex','FontSize',12);
leg1 = legend('Out $PWM_L$','Out $PWM_R$','In $PWM_L$','In $PWM_R$');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('Thruster Signal','Interpreter','latex','FontSize',15);
savefig(fullfile(directorio_destino, 'RC.fig'));
end
function figuraMLC(error_data, ref_mlc_data, directorio_destino)
figure;
hold on
grid on
plot(ref_mlc_data.tiempo,ref_mlc_data.u_d, 'r', 'LineWidth', 0.5);
hold off
%
ylim([0 1.5]);
% xlabel('Tiempo (s)');
% ylabel('u_d (m/s) ');
% legend('desired velocity');
xlabel('$Time~(s)$','Interpreter','latex','FontSize',12);
ylabel('$u_d~(m/s)$','Interpreter','latex','FontSize',12);
% legend('Medido', 'Bejarano', 'Liu');
leg1 = legend('$Desired Velocity$');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('$Desired~Velocity$','Interpreter','latex','FontSize',15);
savefig(fullfile(directorio_destino, 'ud.fig'));

%% 
figure;
grid on
plot(error_data.tiempo,error_data.xe, 'b', 'LineWidth', 0.5);
hold on
grid on
plot(error_data.tiempo,error_data.ye, 'r', 'LineWidth', 0.5);
hold off
%
% xlabel('Tiempo (s)');
% ylabel('error (m) ');
% legend('Xe Longitudinal Error', 'Ye Latteral Error');
xlabel('$Time~(s)$','Interpreter','latex','FontSize',12);
ylabel('$error~(m)$','Interpreter','latex','FontSize',12);
% legend('Medido', 'Bejarano', 'Liu');
leg1 = legend('$Xe~Longitudinal~Error$','$Ye~Latteral~Error$');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('$Longitudinal~and~Latteral~Error$','Interpreter','latex','FontSize',15);
savefig(fullfile(directorio_destino, 'Error_mlc.fig'));

%% 
figure;
plot(error_data.tiempo,error_data.w, 'b', 'LineWidth', 0.5);
hold on
grid on
hold off
%
xlabel('Tiempo (s)');
ylabel('w');
legend('Current w');
savefig(fullfile(directorio_destino, 'wvst.fig'));
end
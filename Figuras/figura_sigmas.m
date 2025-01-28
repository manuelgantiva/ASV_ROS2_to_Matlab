function figura_sigmas(obs_guille, obs_zono, sigmas_zono, directorio_destino)
fig = figure('Name', 'Disturbances estimated', 'NumberTitle', 'off');
%% 
subplot(3,1,1);
grid on
plot(obs_guille.tiempo,obs_guille.su_hat, 'r', 'LineWidth', 1.5);
hold on
plot(obs_zono.tiempo,obs_zono.su_hat, 'k', 'LineWidth', 1.5);
plot(sigmas_zono.tiempo,sigmas_zono.s_u, 'b', 'LineWidth', 1.5);
xlim([0 inf]);
grid on
hold off
xlabel('Time $(s)$','Interpreter','latex','FontSize',12);
ylabel('$\sigma_u~(m~s^{-2})$','Interpreter','latex','FontSize',12);
leg1 = legend('Bejarano et al.','Orihuela el al.','sigmas');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('Estimation of $\sigma_u$','Interpreter','latex','FontSize',15)
%% 
subplot(3,1,2);
grid on
plot(obs_guille.tiempo,obs_guille.sv_hat, 'r', 'LineWidth', 1.5);
hold on
plot(obs_zono.tiempo,obs_zono.sv_hat, 'k', 'LineWidth', 1.5);
plot(sigmas_zono.tiempo,sigmas_zono.s_v, 'b', 'LineWidth', 1.5);

xlim([0 inf]);
grid on
hold off
xlabel('Time $(s)$','Interpreter','latex','FontSize',12);
ylabel('$\sigma_v~(m~s^{-2})$','Interpreter','latex','FontSize',12);
leg1 = legend('Bejarano et al.','Orihuela el al.','sigmas');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('Estimation of $\sigma_v$','Interpreter','latex','FontSize',15)
%% 
subplot(3,1,3);
grid on
plot(obs_guille.tiempo,obs_guille.sr_hat, 'r', 'LineWidth', 1.5);
hold on
plot(obs_zono.tiempo,obs_zono.sr_hat, 'k', 'LineWidth', 1.5);
plot(sigmas_zono.tiempo,sigmas_zono.s_r, 'b', 'LineWidth', 1.5);
xlim([0 inf]);
grid on
hold off
xlabel('Time $(s)$','Interpreter','latex','FontSize',12);
ylabel('$\sigma_r~(rad~s^{-2})$','Interpreter','latex','FontSize',12);
leg1 = legend('Bejarano et al.','Orihuela el al.','sigmas');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',10);
title('Estimation of $\sigma_r$','Interpreter','latex','FontSize',15)


% Obtener los manejadores de los ejes de todos los subplots
ax = findall(gcf, 'Type', 'axes');
% Enlazar los ejes x de todos los subplots
linkaxes(ax, 'x');
savefig(fullfile(directorio_destino, 'Sigmas.fig'));
end


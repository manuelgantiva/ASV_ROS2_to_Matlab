function figuraIG(IGu_data, IGr_data, directorio_destino)
figure;

plot(IGu_data.tiempo,IGu_data.u_dot_ref, 'b', 'LineWidth', 0.5);
hold on
plot(IGu_data.tiempo,IGu_data.error, 'r', 'LineWidth', 0.5);
plot(IGu_data.tiempo,IGu_data.sigma_u, 'k', 'LineWidth', 0.5);
hold off
grid on
%
xlabel('Tiempo (s)');
% ylabel('Surge u (m/s) ');
legend('surge dot ref', 'surge error','surge sigma');
savefig(fullfile(directorio_destino, 'IGu.fig'));
%%
figure;
grid on
plot(IGr_data.tiempo,IGr_data.kr, 'b', 'LineWidth', 0.5);
hold on
plot(IGr_data.tiempo,IGr_data.kpsi, 'r', 'LineWidth', 0.5);
plot(IGr_data.tiempo,IGr_data.r_dot_ref, 'k', 'LineWidth', 0.5);
hold off
grid on
%
xlabel('Tiempo (s)');
% ylabel('Yaw u (rad/s) ');
legend('yaw kr', 'yaw kpsi','yaw r_dot_ref');
savefig(fullfile(directorio_destino, 'IGr.fig'));
end
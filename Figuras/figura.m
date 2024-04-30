function figura_pose(dato1, dato2, dato3)
figure;
grid on
plot(dato1(:,end),dato1(:,col1), 'b', 'LineWidth', 0.5);
hold on
plot(dato2(:,end)-to_obs,dato2(:,col2), 'r', 'LineWidth', 0.5);
hold on
grid on
plot(dato3(:,end),dato3(:,col3), 'g', 'LineWidth', 0.5);
% xlim([0, max(dato1(:,end))]);
hold off
grid on
xlabel('Tiempo (s)');
ylabel('psi (rad)');
legend('Medido', 'Bejarano Kn = 1 ', 'Liu  $K~n$ = 10');
title('Posición')
end
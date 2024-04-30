function trayectoria( pose_data, pose_data_obs, pose_data_liu, directorio_destino, path)

if path == 0
    w= 0:0.01:40;
    x_total = -w;
    y_total = 0*w;

elseif path == 1
    % Trayectorias parametrizadas
    t = linspace(0, 5.602578771323868, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = -2.3203600575040464 * t;
    y = -5.5331662909711845 * t;
    
    % Definir parámetros de tiempo
    t = linspace(2.7492525093742755,5.890845162964069, 100); % Desde 2.729182211992406 hasta 5.870774865582199 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x1 = -7.4668337090288155 + 6.0 * cos(t);
    y1 = -33.32036005750405 + 6.0 * sin(t);
    
    t = linspace(0, 2.5, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x2 = -1.9336674180576292 + 2.320360057504045 * t;
    y2 = -35.640720115008094 + 5.533166290971186 *t;
    
    % Unir las trayectorias
    x_total = [x, x1, x2];
    y_total = [y, y1, y2];

elseif path == 2
    % Trayectorias parametrizadas
    t = linspace(0, 6.723094525588656, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = -1.933633381253368 * t;
    y = -4.6109719091426555 * t;
    
    % Definir parámetros de tiempo
    t = linspace(2.7492525093742755,5.890845162964069, 100); % Desde 2.729182211992406 hasta 5.870774865582199 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x1 = -8.389028090857344 + 5.0 * cos(t);
    y1 = -32.93363338125337 + 5.0 * sin(t);
    
    t = linspace(0, 3.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x2 = -3.77805618171469 + 1.9336333812533704 * t;
    y2 = -34.867266762506745 + 4.610971909142655 * t;
    
    % Unir las trayectorias
    x_total = [x, x1, x2];
    y_total = [y, y1, y2];

elseif path == 3
    % Trayectorias parametrizadas
    t = linspace(0, 8.403868156985801, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = -1.5469067050026977 * t;
    y = -3.688777527314123 * t;
    
    % Definir parámetros de tiempo
    t = linspace(2.7492525093742755,5.890845162964069, 100); % Desde 2.729182211992406 hasta 5.870774865582199 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x1 = -9.311222472685877 + 4.0 * cos(t);
    y1 = -32.5469067050027 + 4.0 * sin(t);
    
    t = linspace(0, 3.75, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x2 = -5.622444945371753 + 1.5469067050026968 * t;
    y2 = -34.093813410005396 + 3.6887775273141243 * t;
    
    % Unir las trayectorias
    x_total = [x, x1, x2];
    y_total = [y, y1, y2];

elseif path == 4
    % Trayectorias parametrizadas
    t = linspace(0, 11.20515754264777, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = -1.1601800287520196 * t;
    y = -2.766583145485594 * t;
    
    % Definir parámetros de tiempo
    t = linspace(2.7492525093742755,5.890845162964069, 100); % Desde 2.729182211992406 hasta 5.870774865582199 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x1 = -10.233416854514406 + 3.0 * cos(t);
    y1 = -32.16018002875202 + 3.0 * sin(t);
    
    t = linspace(0, 11.21, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x2 = -7.466833709028812 + 1.1601800287520199 * t;
    y2 = -33.32036005750405 + 2.766583145485594 * t;
    
    % Definir parámetros de tiempo
    t = linspace(5.890845162964069,9.032437817, 100); % Desde 2.729182211992406 hasta 5.870774865582199 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x3 = 2.772201267795738 + 3.0 * cos(t);
    y3 = -1.1467829678585173 + 3.0 * sin(t);
    
    % Unir las trayectorias
    x_total = [x, x1, x2, x3];
    y_total = [y, y1, y2, y3];

elseif path == 5
    % Trayectorias parametrizadas
    t = linspace(0, 11.884864324004672, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = -0.7572656914410107 * t;
    y = -1.8510939124113528 * t;
    
    % Definir parámetros de tiempo
    t = linspace(2.7492525093742755,5.890845162964069, 100); % Desde 2.729182211992406 hasta 5.870774865582199 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x1 = -7.148906087588648 + 2.0 * cos(t);
    y1 = -22.75726569144101 + 2.0 * sin(t);
    
    t = linspace(0, 11.89, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x2 = -5.297812175177295 + 0.7572656914410111 * t;
    y2 = -23.51453138288202 +  1.8510939124113521  * t;
    
    % Definir parámetros de tiempo
    t = linspace(5.890845162964069,9.032437817, 100); % Desde 2.729182211992406 hasta 5.870774865582199 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x3 = 1.854982983644974 + 2.0 * cos(t);
    y3 = -0.747759072870027 + 2.0 * sin(t);
    
    % Unir las trayectorias
    x_total = [x, x1, x2, x3];
    y_total = [y, y1, y2, y3];

elseif path == 6
    % Trayectorias parametrizadas
    t = linspace(0, 11.884864324004672, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = -0.7572656914410107 * t;
    y = -1.8510939124113528 * t;
    
    % Definir parámetros de tiempo
    t = linspace(2.7492525093742755,4.3240702622122225, 100); % Desde 2.729182211992406 hasta 5.870774865582199 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x1 = -7.148906087588648 + 2.0 * cos(t);
    y1 = -22.75726569144101 + 2.0 * sin(t);
    
    t = linspace(0, 8.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x2 = -7.906171779029658 +  1.8510939124113523 * t;
    y2 = -24.608359603852364 - 0.7572656914410109 * t;
    
    % Definir parámetros de tiempo
    t = linspace(-1.9591150449673609 , -0.38831871817246433, 100); % Desde 2.729182211992406 hasta 5.870774865582199 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x3 = 7.659845211702165 + 2.0  * cos(t);
    y3 = -28.81539122296911 + 2.0 * sin(t);
    
    t = linspace(0, 8.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x4 = 9.51093912411352 + 0.7572656914410052 * t;
    y4 = -29.572656914410118 + 1.8510939124113548  * t;
    
    % Unir las trayectorias
    x_total = [x, x1, x2, x3, x4];
    y_total = [y, y1, y2, y3, y4];

elseif path == 7
    % Trayectorias parametrizadas
    t = linspace(0, 7.310570733153706, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = -1.2310940319864043 * t;
    y = -2.7357645155253145 * t;
    
    % Definir parámetros de tiempo
    t = linspace(2.7187387274568486,4.289535054251745, 100); % Desde 2.729182211992406 hasta 5.870774865582199 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x1 = -6.2642354844746855 + 3.0  * cos(t);
    y1 = -21.23109403198639 + 3.0 * sin(t);
    
    t = linspace(0, 5.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x2 = -7.49532951646109 + 2.735764515525314 * t;
    y2 = -23.966858547511706 - 1.2310940319864045 * t;
    
    % Definir parámetros de tiempo
    t = linspace(-1.993650252927841 , -0.4228539261329445, 100); % Desde 2.729182211992406 hasta 5.870774865582199 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x3 = 7.4145870931518845 + 3.0  * cos(t);
    y3 = -27.386564191918417 + 3.0 * sin(t);
    
    t = linspace(0, 5.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x4 = 10.150351608677198 + 1.2310940319864039 * t;
    y4 = -28.617658223904822 + 2.7357645155253145 * t;
    
    % Unir las trayectorias
    x_total = [x, x1, x2, x3, x4];
    y_total = [y, y1, y2, y3, y4];

elseif path == 8
    % Trayectorias parametrizadas
    t = linspace(0, 4.6970735570139786, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = -1.7031881453195203 * t;
    y = -3.6192748088039752 * t;
    
    % Definir parámetros de tiempo
    t = linspace(2.7017500707740565 , 4.272546397568953, 100); % Desde 2.729182211992406 hasta 5.870774865582199 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x1 = -4.380725191196024 + 4.0  * cos(t);
    y1 = -18.70318814531952 + 4.0 * sin(t);
    
    t = linspace(0, 3.75, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x2 = -6.083913336515545 + 3.619274808803975 * t;
    y2 = -22.322462954123495 - 1.7031881453195203 * t;
    
    % Definir parámetros de tiempo
    t = linspace(-2.010638909610635,-0.4398425828157384, 100); % Desde 2.729182211992406 hasta 5.870774865582199 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x3 = 9.191555341818887 + 4.0  * cos(t);
    y3 = -25.090143690267716 + 4.0 * sin(t);
    
    t = linspace(0, 3.75, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x4 = 12.81083015062286 + 1.7031881453195263 * t;
    y4 = -26.793331835587242 + 3.6192748088039726 * t;
    
    % Unir las trayectorias
    x_total = [x, x1, x2, x3, x4];
    y_total = [y, y1, y2, y3, y4];

elseif path == 9
    % Trayectorias parametrizadas
    t = linspace(0, 4.272001872658765, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = -1.404493766353567 * t;
    y = -3.7453167102761777 * t;
    
    % Definir parámetros de tiempo
    t = linspace(2.782821983319221 , 4.3536183101141175, 100); % Desde 2.729182211992406 hasta 5.870774865582199 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x1 = -2.254683289723822 + 4.0 * cos(t);
    y1 = -17.404493766353568 + 4.0 * sin(t);
    
    t = linspace(0, 3.25, 100); % 13 Metros
    % Definir las funciones para x(t) y y(t)
    x2 = -3.659177056077389 + 3.7453167102761777 * t;
    y2 = -21.149810476629746 - 1.4044937663535673 * t;
    
    % Definir parámetros de tiempo
    t = linspace(-1.9295669970654692 , -0.7078365206694386, 100); % Desde 2.729182211992406 hasta 5.870774865582199 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x3 =  9.917596018673757 + 4.0  * cos(t);
    y3 = -21.969098507002656 + 4.0 * sin(t);
    
    t = linspace(0, 7.5, 100); % 30 metros
    % Definir las funciones para x(t) y y(t)
    x4 = 12.95667733455818 + 2.600766186230936 * t;
    y4 = -24.56986469323359 + 3.0390813158844225 * t;
    
    % Definir parámetros de tiempo
    t = linspace(-0.7078365206694404,-0.18423774507114155, 100); % Desde 2.729182211992406 hasta 5.870774865582199 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x5 =  29.42334241540577 + 4.0 * cos(t);
    y5 = 0.8240113621305198 + 4.0 * sin(t);
    
    t = linspace(0.0, 3.75, 100); % 15 metros
    % Definir las funciones para x(t) y y(t)
    x6 = 33.35564713224379 + 0.7327889286373575 * t;
    y6 = 0.0912224334931625 + 3.932304716838017 * t;
    
    % Definir parámetros de tiempo
    t = linspace(-0.1842377450711427 , 0.3393610305271561, 100); % Desde 2.729182211992406 hasta 5.870774865582199 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x7 =  32.17130089779585 + 4.0 * cos(t);
    y7 = 15.570154050273246 + 4.0 * sin(t);
    
    % Definir parámetros de tiempo
    t = linspace(0.00, 2.5, 100); % 10 metros
    % Definir las funciones para x(t) y y(t)
    x8 = 35.94317114231763 - 1.3315385306070702 * t;
    y8 = 16.901692580880315 + 3.7718702445217764 * t;
    
    % Definir parámetros de tiempo
    t = linspace(0.33936103052715966,1.9101573573220563, 100); % Desde 2.729182211992406 hasta 5.870774865582199 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x9 = 28.842454571278182 + 4.0 * cos(t);
    y9 = 24.999829661577685 + 4.0  * sin(t);
    
    % Definir parámetros de tiempo
    t = linspace(0.00, 2.5, 100); % 10 metros
    % Definir las funciones para x(t) y y(t)
    x10 = 27.5109160406711 - 3.7718702445217716 * t;
    y10 = 28.771699906099457 - 1.3315385306070835 * t;
    
    % Definir parámetros de tiempo
    t = linspace(1.9101573573220572 , 3.8300195345158192, 100); % Desde 2.729182211992406 hasta 5.870774865582199 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x11 = 19.412778959973753 + 4.0 * cos(t);
    y11 = 21.670983335059958 + 4.0  * sin(t);
    
    % Definir parámetros de tiempo
    t = linspace(0.0, 6.25, 100); % 25 metros
    % Definir las funciones para x(t) y y(t)
    x12 = 16.32379332371659 + 2.5412925331407505 * t;
    y12 = 19.129690801919207 - 3.0889856362571626 * t;
    
    % Definir parámetros de tiempo
    t = linspace(2.4531657726637675 , 4.0239620994586645, 100); % Desde 2.729182211992406 hasta 5.870774865582199 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x13 = 29.117886019589122 - 4.0 * cos(t);
    y13 = -2.7177619578288237 + 4.0  * sin(t);
    
    % Definir parámetros de tiempo
    t = linspace(0.0, 8.75, 100); % 35 metros
    % Definir las funciones para x(t) y y(t)
    x14 = 31.65917855272987 - 3.088985636257164 * t;
    y14 = -5.806747594085987 - 2.5412925331407488 * t;
    
    % Definir parámetros de tiempo
    t = linspace(-2.2592232077209218 , -0.16482810532772652, 100); % Desde 2.729182211992406 hasta 5.870774865582199 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x15 = 2.0892617023389377 - 4.0 * cos(t);
    y15 = -24.954071622810375 + 4.0  * sin(t);
    
    % Definir parámetros de tiempo
    t = linspace(0.0, 3.75, 100); % 15 metros
    % Definir las funciones para x(t) y y(t)
    x16 = -1.8565245971553783 - 0.6563310740190138 * t;
    y16 = -25.61040269682939 + 3.9457862994943156 * t;
    
    % Unir las trayectorias
    x_total = [x, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16];
    y_total = [y, y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15, y16];
end
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
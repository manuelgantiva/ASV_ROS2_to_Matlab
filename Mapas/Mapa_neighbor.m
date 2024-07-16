function Mapa_neighbor( pose_data, pose_neighbor, directorio_destino, path,path_n, lake, map)
% Lake = 0 Mapa Lago de la Vida Grande
% Lake = 1 Mapa Lago del Alamillo Izquierda
% Lake = 2 Mapa Lago del Alamillo Derecha
% Lake = 3 Mapa Lago de la Vida Pequeño

% map = True Mapa Binario
% map = False Mapa Normal

if lake == 0
    % CARGAR IMAGEN DEL MAPA 
    if map == true
        mapa = imread('Lago de la vida 1 Binario.png');
    else
        mapa = imread('Lago de la vida 1 Normal.png');
    end
    mapTitle = 'Lago de la Vida';
    
    % DEFINIR ORIGEN DE COORDENADAS XY (EN PIXELES)
    origen_x = 1619; % Define la coordenada x del origen
    origen_y = 960;  % Define la coordenada y del origen
    
    % EQUIVALENCIA PX A METROS
    one_px = 0.0473;
    % Trayectorias parametrizadas
    [x_total, y_total] = trayectoria_loyola1(path);
    [x_total2, y_total2] = trayectoria_loyola1(path_n);
elseif lake == 1
    % CARGAR IMAGEN DEL MAPA 
    if map == true
        mapa = imread('Lago Alamillo Izq Binario.png');
    else
        mapa = imread('Lago Alamillo Normal.png');
    end
    mapTitle = 'Lago del Alamillo';
    % DEFINIR ORIGEN DE COORDENADAS XY (EN PIXELES)
    origen_x = 2288; % Define la coordenada x del origen
    origen_y = 1245;  % Define la coordenada y del origen
    
    % EQUIVALENCIA PX A METROS
    one_px = 0.09259;
    % Trayectorias parametrizadas
    [x_total, y_total] = trayectoria_alamillo1(path);
    [x_total2, y_total2] = trayectoria_alamillo1(path_n);
elseif lake == 2
    % CARGAR IMAGEN DEL MAPA 
    if map == true
        mapa = imread('Lago Alamillo Der Binario.png');
    else
        mapa = imread('Lago Alamillo Normal.png');
    end
    mapTitle = 'Lago del Alamillo';
    % DEFINIR ORIGEN DE COORDENADAS XY (EN PIXELES)
    origen_x = 2781; % Define la coordenada x del origen
    origen_y = 1335;  % Define la coordenada y del origen
    
    % EQUIVALENCIA PX A METROS
    one_px = 0.09259;
    % Trayectorias parametrizadas
    [x_total, y_total] = trayectoria_alamillo1(path);
    [x_total2, y_total2] = trayectoria_alamillo1(path_n);
elseif lake == 3
    % CARGAR IMAGEN DEL MAPA
    if map == true
        mapa = imread('Lago de la vida 2 Binario.png');
    else
        mapa = imread('Lago de la vida 2 Normal.png');
    end
    mapTitle = 'Lago de la Vida';
    % DEFINIR ORIGEN DE COORDENADAS XY (EN PIXELES)
    origen_x = 2023;  % Define la coordenada x del origen
    origen_y = 1744;  % Define la coordenada y del origen
    
    % EQUIVALENCIA PX A METROS
    one_px = 10/273;
    % Trayectorias parametrizadas
    [x_total, y_total] = trayectoria_loyola2(path);
    [x_total2, y_total2] = trayectoria_loyola2(path_n);
end
%%
% CÁLCULO DEL ORIGEN EN METROS (1Px = 0.0473m)
fig = figure('Name', 'Map_neighbor', 'NumberTitle', 'off');
[filas, columnas, ~] = size(mapa);
x_lim = [-origen_x*one_px, columnas*one_px - origen_x*one_px];
y_lim = [origen_y*one_px, -filas*one_px + origen_y*one_px]; % Se invierten los límites del eje Y

% ESTABLECER EL SENTIDO DE LOS EJES Y DIBUJAR EL ORIGEN
imshow(mapa, 'XData', x_lim, 'YData', y_lim)
set(gca, 'YDir', 'normal'); % Esto cambia la dirección del eje Y a normal
axis on
hold on
scatter(0,0,30,'k','filled')

% DIBUJAR EJES EN LA IMAGEN
plot([0,0],y_lim, 'k','LineWidth',1.0)
plot(x_lim,[0,0], 'k','LineWidth',1.0)
%% Plot
hold all
% Trayectoria Deseada
plot(x_total, y_total, '-k', 'LineWidth', 3.0);
plot(x_total2, y_total2, '-y', 'LineWidth', 3.0);
% Trayectoria real
plot(pose_data.y_hat(1,1), pose_data.x_hat(1,1), '^','Color','k', 'LineWidth', 1.0,'MarkerFaceColor','b', 'MarkerSize', 9.0 )
plot(pose_data.y_hat(end,1), pose_data.x_hat(end,1), 'o', 'Color','k','LineWidth', 1.0, 'MarkerFaceColor','g', 'MarkerSize', 9.0);
plot(pose_data.y_hat, pose_data.x_hat, 'r', 'LineWidth', 2.0);

plot(pose_neighbor.y_n(1,1), pose_neighbor.x_n(1,1), '^','Color','k', 'LineWidth', 1.0,'MarkerFaceColor','m' , 'MarkerSize', 9.0)
plot(pose_neighbor.y_n(end,1), pose_neighbor.x_n(end,1), 'o', 'Color','k','LineWidth', 1.0, 'MarkerFaceColor','c', 'MarkerSize', 9.0);
plot(pose_neighbor.y_n, pose_neighbor.x_n, 'w', 'LineWidth', 2.0);
hold off
xlabel('South $y(m)$','Interpreter','latex','FontSize',12)
ylabel('East $x(m)$','Interpreter','latex','FontSize',12)
set(gca, 'XAxisLocation', 'bottom','YAxisLocation', 'right')
set(gca, 'FontSize', 10);
leg1 = legend('','','','$Path$','$Path_n$','$Start$','$end$','$Dron$','$Start_n$','$end_n$','$Dron_n$');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',12);
title(mapTitle,'Interpreter','latex','FontSize',15)
hold off
savefig(fullfile(directorio_destino, 'Mapa_neighbor.fig'));
end
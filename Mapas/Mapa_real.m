function Mapa_real( pose_data, pose_data_obs, pose_data_liu, directorio_destino, path, lake, map)
% Lake = 0 Mapa Lago de la Vida Grande
% Lake = 1 Mapa Lago del Alamillo Izquierda
% Lake = 2 Mapa Lago del Alamillo Derecha
% Lake =  Mapa Lago de la Vida Pequeño

% map = True Mapa Binario
% map = False Mapa Normal

if lake == 0
    % CARGAR IMAGEN DEL MAPA 
    if map == true
        mapa = imread('Lago de la vida 1 Binario.png');
    else
        mapa = imread('Lago de la vida 1 Normal.png');
    end
    mapTitle = '$Lake~of~Life$';
    
    % DEFINIR ORIGEN DE COORDENADAS XY (EN PIXELES)
    origen_x = 1619; % Define la coordenada x del origen
    origen_y = 960;  % Define la coordenada y del origen
    
    % EQUIVALENCIA PX A METROS
    one_px = 0.0473;
    % Trayectorias parametrizadas
    [x_total, y_total] = trayectoria_loyola1(path);

elseif lake == 1
    % CARGAR IMAGEN DEL MAPA 
    if map == true
        mapa = imread('Lago Alamillo Izq Binario.png');
    else
        mapa = imread('Lago Alamillo Normal.png');
    end
    mapTitle = 'LAGO DEL ALAMILLO';
    % DEFINIR ORIGEN DE COORDENADAS XY (EN PIXELES)
    origen_x = 2288; % Define la coordenada x del origen
    origen_y = 1245;  % Define la coordenada y del origen
    
    % EQUIVALENCIA PX A METROS
    one_px = 0.09259;
    % Trayectorias parametrizadas
    [x_total, y_total] = trayectoria_alamillo1(path);
elseif lake == 2
    % CARGAR IMAGEN DEL MAPA 
    if map == true
        mapa = imread('Lago Alamillo Der Binario.png');
    else
        mapa = imread('Lago Alamillo Normal.png');
    end
    mapTitle = '$LAGO DEL ALAMILLO$';
    % DEFINIR ORIGEN DE COORDENADAS XY (EN PIXELES)
    origen_x = 2781; % Define la coordenada x del origen
    origen_y = 1335;  % Define la coordenada y del origen
    
    % EQUIVALENCIA PX A METROS
    one_px = 0.09259;
    % Trayectorias parametrizadas
    [x_total, y_total] = trayectoria_alamillo1(path);
elseif lake == 3
    % CARGAR IMAGEN DEL MAPA
    if map == true
        mapa = imread('Lago de la vida 2 Binario.png');
    else
        mapa = imread('Lago de la vida 2 Normal.png');
    end
    mapTitle = '$LAGO DE LA VIDA$';
    % DEFINIR ORIGEN DE COORDENADAS XY (EN PIXELES)
    origen_x = 2023;  % Define la coordenada x del origen
    origen_y = 1744;  % Define la coordenada y del origen
    
    % EQUIVALENCIA PX A METROS
    one_px = 10/273;
    % Trayectorias parametrizadas
    [x_total, y_total] = trayectoria_loyola2(path);
end
%%
% CÁLCULO DEL ORIGEN EN METROS (1Px = 0.0473m)
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

% plot(ctps_corregidos(1,:),ctps_corregidos(2,:),'xb-')
hold all
% plot(q(1,:), q(2,:),'color',"b",'LineWidth',2)
% Trayectoria Deseada
plot(x_total, y_total, '-b', 'LineWidth', 1.5);
% Trayectoria real
plot(pose_data.y(1,1), pose_data.x(1,1), '^','Color','y', 'LineWidth', 1.5,'MarkerFaceColor','y' )
plot(pose_data.y(end,1), pose_data.x(end,1), 'o', 'Color','g','LineWidth', 1.5, 'MarkerFaceColor','g');
plot(pose_data_obs.y_hat, pose_data_obs.x_hat, 'r', 'LineWidth', 1.5);
% plot(pose_data_liu.y_hat, pose_data_liu.x_hat, 'g', 'LineWidth', 1);
hold off
xlabel('$South~(m)$','Interpreter','latex','FontSize',12)
ylabel('$East~(m)$','Interpreter','latex','FontSize',12)
set(gca, 'XAxisLocation', 'bottom','YAxisLocation', 'right')
set(gca, 'FontSize', 10);
leg1 = legend('','','','$Desired~Path$','$Start$','$end$','$Bejarano~et~al.~[6]$');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',12);
title(mapTitle,'Interpreter','latex','FontSize',15)
hold off
savefig(fullfile(directorio_destino, 'Mapa.fig'));
end
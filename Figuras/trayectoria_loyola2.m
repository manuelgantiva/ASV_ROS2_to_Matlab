function [x_total, y_total] = trayectoria_loyola2(path)

if path == 0
    t = linspace(0, 10.829589096544904, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = -4.0 - 0.1846792137882761* t;
    y = 2.4931693861417727 * t;
    
    % Unir las trayectorias
    x_total = [x];
    y_total = [y];

elseif path == 1
    % Definir parámetros de tiempo
    t = linspace(0, 7.641989269817493, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = -2.0 - 0.26171196129509405* t;
    y = 2.4862636323035163 * t;
    
    % Definir parámetros de tiempo
    t = linspace(0.10487693873022876,3.2464695923200217, 100); % Desde 2.729182211992406 hasta 5.870774865582199 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x1 =  -6.486263632303516 + 2.5  * cos(t);
    y1 = 18.738288038704894 + 2.5 * sin(t);
    
    t = linspace(0, 7.641989269817493, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x2 = -8.972527264607033 + 0.26171196129509405 * t;
    y2 = 18.4765760774098 - 2.4862636323035163* t;
    
    % Unir las trayectorias
    x_total = [x, x1, x2];
    y_total = [y, y1, y2];

elseif path == 2
    t = linspace(0, 12.936264483053298, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = -5.0 - 0.0773020682523935*t;
    y = -2.0 + 0.6957186142715331* t;
    
    % Definir parámetros de tiempo
    t = linspace(-0.11065722117389698,0.20124658743242985, 100); % Desde 2.729182211992406 hasta 5.870774865582199 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x1 = -5.304281385728461  - 0.7 * cos(t);
    y1 = 7.0773020682523935 + 0.7 * sin(t);
    
    t = linspace(0, 3.107142857142904, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x2 = -5.990154096127186 + 0.13992364035540028 *t;
    y2 = 7.217225708607795 + 0.6858727103987244 *t;
    
    % Definir parámetros de tiempo
    t = linspace(-0.2012465874324283,0.11065722117389853, 100); % Desde 2.729182211992406 hasta 5.870774865582199 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x3 = -6.241264066850185 + 0.7 * cos(t);
    y3 = 9.488253841987818 + 0.7 * sin(t);
    
    t = linspace(0, 14.285714285714233, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x4 = -5.5455454525786525 - 0.07730206825239459 *t;
    y4 = 9.565555910240214 + 0.6957186142715329 *t;
    
    % Unir las trayectorias
    x_total = [x, x1, x2, x3, x4];
    y_total = [y, y1, y2, x3, y4];

end

end
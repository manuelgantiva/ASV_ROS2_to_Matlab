function [x_total, y_total] = trayectoria_alamillo1(path)

if path == 0
    t = linspace(0, 8.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = 0.0 - 1.0 * t;
    y = 0.0 + 0.0 * t;
    
    % Unir las trayectorias
    x_total = x;
    y_total = y;

elseif path == 1
    % Trayectorias parametrizadas
    t = linspace(0, 12.5, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = 1.0 + 0.0 * t;
    y = -6.0 -2.0 * t;
    % Definir parámetros de tiempo
    t = linspace(3.141592653589793 , 6.283185207179587, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x1 = 3.0000000000000004 + 2.0* cos(t);
    y1 = -31.0 + 2.0* sin(t);
    % 
    t = linspace(0, 12.5, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x2 = 5.0 + 0.0 * t;
    y2 = -31.0 + 2.0 * t;
    % Definir parámetros de tiempo
    t = linspace(0.0 , 3.141592653589793, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x3 = 3.0 + 2.0 * cos(t);
    y3 = -6.0 + 2.0* sin(t);

    % Unir las trayectorias
    x_total = [x, x1, x2, x3];
    y_total = [y, y1, y2, y3];

elseif path == 2
    % Trayectorias parametrizadas
    t = linspace(0, 12.5, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = -1.0 + 0.0 * t;
    y = -6.0 -2.0 * t;
    % Definir parámetros de tiempo
    t = linspace(3.141592653589793 , 6.283185307179586, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x1 =  3.0 + 4.0 * cos(t);
    y1 = -31.0 + 4.0* sin(t);
    % 
    t = linspace(0, 12.5, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x2 = 7.0 + 0.0 * t;
    y2 = -31.0 + 2.0 * t;
    % Definir parámetros de tiempo
    t = linspace(0.0 , 3.141592653589793, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x3 =  3.0 + 4.0 * cos(t);
    y3 = -6.0 + 4.0* sin(t);

    % Unir las trayectorias
    x_total = [x, x1, x2, x3];
    y_total = [y, y1, y2, y3];

elseif path == 3
    % Trayectorias parametrizadas
    t = linspace(0, 12.5, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = -3.0 + 0.0* t;
    y = -6.0 - 2.0 * t;
    % Definir parámetros de tiempo
    t = linspace(3.141592653589793 , 6.283185307179586 , 100); %  100 puntos
    % % Definir las funciones para x(t) y y(t)
    x1 = 3.0 + 6.0 * cos(t);
    y1 = -31.0 + 6.0 * sin(t);
    % 
    t = linspace(0, 12.5, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x2 = 9.0 + 0.0 * t;
    y2 = -31.0 + 2.0 * t;
    % Definir parámetros de tiempo
    t = linspace(0.0 , 3.141592653589793, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x3 =  3.0 + 6.0 * cos(t);
    y3 = -6.0 + 6.0 * sin(t);

    % Unir las trayectorias
    x_total = [x, x1, x2, x3];
    y_total = [y, y1, y2, y3];

elseif path == 4
    % Trayectorias parametrizadas
    t = linspace(0, 10.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = 6.0 - 2.0 * t;
    y = -4.0 + 0.0 * t;
    
    % Definir parámetros de tiempo
    t = linspace(1.5707963267948966,3.141591653589793, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x1 = -14.0 + 2.0 * cos(t);
    y1 = -6.0 + 2.0 * sin(t);
    
    t = linspace(0, 10.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x2 = -16.0 + 0.0 * t;
    y2 = -6.0 - 2.0  * t;
    
    % Definir parámetros de tiempo
    t = linspace(3.141592653589793,4.71238898038469, 100); % 100 puntos
    % Definir las funciones para x(t) y y(t)
    x3 = -14.0 + 2.0 * cos(t);
    y3 = -26.0 + 2.0 * sin(t);
    
    t = linspace(0, 10.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x4 = -14.0 + 2.0 * t;
    y4 = -28.0 + 0.0 * t;
    
    % Definir parámetros de tiempo
    t = linspace(-1.5707963267948966 ,0.0, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x5 = 6.0 + 2.0 * cos(t);
    y5 = -26.0 + 2.0 * sin(t);
    
    t = linspace(0, 10.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x6 = 8.0 + 0.0 * t;
    y6 = -26.0 + 2.0  * t;
    
    % Definir parámetros de tiempo
    t = linspace(0.0 , 1.5707953267948966, 100); % 100 puntos
    % Definir las funciones para x(t) y y(t)
    x7 = 6.0 + 2.0 * cos(t);
    y7 = -6.0 + 2.0 * sin(t);
    
    % Unir las trayectorias
    x_total = [x, x1, x2, x3, x4, x5, x6, x7];
    y_total = [y, y1, y2, y3, y4, y5, y6, y7];

elseif path == 5
    % Trayectorias parametrizadas

    t = linspace(0, 10.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = 6.0 - 2.0 * t;
    y = -2.0 + 0.0 * t;
    
    % Definir parámetros de tiempo
    t = linspace(1.5707963267948966 , 3.141592653589793, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x1 = -14.0 + 4.0 * cos(t);
    y1 = -6.0 + 4.0 * sin(t);
    
    t = linspace(0, 10.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x2 = -18.0 + 0.0 * t;
    y2 = -6.0 - 2.0  * t;
    
    % Definir parámetros de tiempo
    t = linspace(3.141592653589793 , 4.71238898038469, 100); % 100 puntos
    % Definir las funciones para x(t) y y(t)
    x3 = -14.0 + 4.0 * cos(t);
    y3 = -26.0 + 4.0 * sin(t);
    
    t = linspace(0, 10.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x4 = -14.0 + 2.0 * t;
    y4 = -30.0 + 0.0 * t;
    
    % Definir parámetros de tiempo
    t = linspace(-1.5707963267948966 ,0.0, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x5 = 6.0 + 4.0 * cos(t);
    y5 = -26.0 + 4.0 * sin(t);
    
    t = linspace(0, 10.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x6 = 10.0 + 0.0 * t;
    y6 = -26.0 + 2.0  * t;
    
    % Definir parámetros de tiempo
    t = linspace(0.0 , 1.5707953267948966, 100); % 100 puntos
    % Definir las funciones para x(t) y y(t)
    x7 = 6.0 + 4.0 * cos(t);
    y7 = -6.0 + 4.0 * sin(t);

    % Unir las trayectorias
    x_total = [x, x1, x2, x3, x4, x5, x6, x7];
    y_total = [y, y1, y2, y3, y4, y5, y6, y7];

elseif path == 6
    % Trayectorias parametrizadas
    t = linspace(0, 10, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = 6.0 - 2.0 * t;
    y = 0.0 + 0.0 * t;
    
    % Definir parámetros de tiempo
    t = linspace(1.5707963267948966,3.141591653589793, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x1 = -14.0 + 6.0 * cos(t);
    y1 = -6.0 + 6.0 * sin(t);
    
    t = linspace(0, 10, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x2 = -20.0 + 0.0 * t;
    y2 = -6.0 - 2.0  * t;
    
    % Definir parámetros de tiempo
    t = linspace(3.141592653589793,4.71238898038469, 100); % 100 puntos
    % Definir las funciones para x(t) y y(t)
    x3 = -14.0 + 6.0 * cos(t);
    y3 = -26.0 + 6.0 * sin(t);
    
    t = linspace(0, 10, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x4 = -14.0 + 2.0 * t;
    y4 = -32.0 + 0.0 * t;
    
    % Definir parámetros de tiempo
    t = linspace(-1.5707963267948966 ,0.0, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x5 = 6.0 + 6.0 * cos(t);
    y5 = -26.0 + 6.0 * sin(t);
    
    t = linspace(0, 10, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x6 = 12.0 + 0.0 * t;
    y6 = -26.0 + 2.0  * t;
    
    % Definir parámetros de tiempo
    t = linspace(0.0 , 1.5707953267948966, 100); % 100 puntos
    % Definir las funciones para x(t) y y(t)
    x7 = 6.0 + 6.0 * cos(t);
    y7 = -6.0 + 6.0 * sin(t);

    % Unir las trayectorias
    x_total = [x, x1, x2, x3, x4, x5, x6, x7];
    y_total = [y, y1, y2, y3, y4, y5, y6, y7];

elseif path == 7
    % Trayectorias parametrizadas
    t = linspace(0, 10.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = 6.0 - 2.0 * t;
    y = -4.0 + 0.0 * t;
    
    % Definir parámetros de tiempo
    t = linspace(1.5707963267948966,3.141591653589793, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x1 = -14.0 + 1.0 * cos(t);
    y1 = -5.0 + 1.0 * sin(t);
    
    t = linspace(0, 10.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x2 = -15.0 + 0.0 * t;
    y2 = -5.0 - 2.0  * t;
    
    % Definir parámetros de tiempo
    t = linspace(3.141592653589793,4.71238898038469, 100); % 100 puntos
    % Definir las funciones para x(t) y y(t)
    x3 = -14.0 + 1.0 * cos(t);
    y3 = -25.0 + 1.0 * sin(t);
    
    t = linspace(0, 10.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x4 = -14.0 + 2.0 * t;
    y4 = -26.0 + 0.0 * t;
    
    % Definir parámetros de tiempo
    t = linspace(-1.5707963267948966 ,0.0, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x5 = 6.0 + 1.0 * cos(t);
    y5 = -25.0 + 1.0 * sin(t);
    
    t = linspace(0, 10.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x6 = 7.0 + 0.0 * t;
    y6 = -25.0 + 2.0  * t;
    
    % Definir parámetros de tiempo
    t = linspace(0.0 , 1.5707953267948966, 100); % 100 puntos
    % Definir las funciones para x(t) y y(t)
    x7 = 6.0 + 1.0 * cos(t);
    y7 = -5.0 + 1.0 * sin(t);
    
    % Unir las trayectorias
    x_total = [x, x1, x2, x3, x4, x5, x6, x7];
    y_total = [y, y1, y2, y3, y4, y5, y6, y7];

elseif path == 8
    % Trayectorias parametrizadas
    t = linspace(0, 10.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = 6.0 - 2.0 * t;
    y = -2.75 + 0.0 * t;
    
    % Definir parámetros de tiempo
    t = linspace(1.5707963267948966 , 3.141592653589793, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x1 = -14.0 + 2.25 * cos(t);
    y1 = -5.0 + 2.25 * sin(t);
    
    t = linspace(0, 10.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x2 = -16.25 + 0.0 * t;
    y2 = -5.0 - 2.0  * t;
    
    % Definir parámetros de tiempo
    t = linspace(3.141592653589793 , 4.71238898038469, 100); % 100 puntos
    % Definir las funciones para x(t) y y(t)
    x3 = -14.0 + 2.25 * cos(t);
    y3 = -25.0 + 2.25 * sin(t);
    
    t = linspace(0, 10.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x4 = -14.0 + 2.0 * t;
    y4 = -27.25 + 0.0 * t;
    
    % Definir parámetros de tiempo
    t = linspace(-1.5707963267948966 ,0.0, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x5 = 6.0 + 2.25 * cos(t);
    y5 = -25.0 + 2.25 * sin(t);
    
    t = linspace(0, 10.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x6 = 8.25 + 0.0 * t;
    y6 = -25.0 + 2.0  * t;
    
    % Definir parámetros de tiempo
    t = linspace(0.0 , 1.5707953267948966, 100); % 100 puntos
    % Definir las funciones para x(t) y y(t)
    x7 = 6.0 + 2.25 * cos(t);
    y7 = -5.0 + 2.25 * sin(t);
    
    % Unir las trayectorias
    x_total = [x, x1, x2, x3, x4, x5, x6, x7];
    y_total = [y, y1, y2, y3, y4, y5, y6, y7];

elseif path == 9
    % Trayectorias parametrizadas
    t = linspace(0, 10, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = 6.0 - 2.0 * t;
    y = -1.5 + 0.0 * t;
    
    % Definir parámetros de tiempo
    t = linspace(1.5707963267948966,3.141591653589793, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x1 = -14.0 + 3.5 * cos(t);
    y1 = -5.0 + 3.5 * sin(t);
    
    t = linspace(0, 10, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x2 = -17.5 + 0.0 * t;
    y2 = -5.0 - 2.0  * t;
    
    % Definir parámetros de tiempo
    t = linspace(3.141592653589793,4.71238898038469, 100); % 100 puntos
    % Definir las funciones para x(t) y y(t)
    x3 = -14.0 + 3.5 * cos(t);
    y3 = -25.0 + 3.5 * sin(t);
    
    t = linspace(0, 10, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x4 = -14.0 + 2.0 * t;
    y4 = -28.5 + 0.0 * t;
    
    % Definir parámetros de tiempo
    t = linspace(-1.5707963267948966 ,0.0, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x5 = 6.0 + 3.5 * cos(t);
    y5 = -25.0 + 3.5 * sin(t);
    
    t = linspace(0, 10, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x6 = 9.5 + 0.0 * t;
    y6 = -25.0 + 2.0  * t;
    
    % Definir parámetros de tiempo
    t = linspace(0.0 , 1.5707953267948966, 100); % 100 puntos
    % Definir las funciones para x(t) y y(t)
    x7 = 6.0 + 3.5 * cos(t);
    y7 = -5.0 + 3.5 * sin(t);
    
    % Unir las trayectorias
    x_total = [x, x1, x2, x3, x4, x5, x6, x7];
    y_total = [y, y1, y2, y3, y4, y5, y6, y7];
elseif path == 10
    t = linspace(0, 12.5, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = 0.0 + 0.0* t;
    y = -6.0 - 2 * t;
    % Definir parámetros de tiempo
    t = linspace(3.141592653589793 , 6.283185307179586 , 100); %  100 puntos
    % % Definir las funciones para x(t) y y(t)
    x1 =  3.0 + 3 * cos(t);
    y1 = -31.0 + 3 * sin(t);
    % 
    t = linspace(0, 12.5, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x2 = 6.0 + 0.0 * t;
    y2 = -31.0 + 2.0 * t;
    % Definir parámetros de tiempo
    t = linspace(0.0 , 3.141592653589793, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x3 =  3.0 + 3.0 * cos(t);
    y3 = -6.0 + 3.0 * sin(t);

    % Unir las trayectorias
    x_total = [x, x1, x2, x3];
    y_total = [y, y1, y2, y3];

elseif path == 11
    t = linspace(0, 12.5, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = -2 + 0.0* t;
    y = -6.0 - 2 * t;
    % Definir parámetros de tiempo
    t = linspace(3.141592653589793 , 6.283185307179586 , 100); %  100 puntos
    % % Definir las funciones para x(t) y y(t)
    x1 =  3.0 + 5 * cos(t);
    y1 = -31.0 + 5 * sin(t);
    % 
    t = linspace(0, 12.5, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x2 = 8.0 + 0.0 * t;
    y2 = -31.0 + 2.0 * t;
    % Definir parámetros de tiempo
    t = linspace(0.0 , 3.141592653589793, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x3 =  3.0 + 5.0 * cos(t);
    y3 = -6.0 + 5.0 * sin(t);

    % Unir las trayectorias
    x_total = [x, x1, x2, x3];
    y_total = [y, y1, y2, y3];
elseif path == 12
    t = linspace(0, 10.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = 6.0 - 2.0 * t;
    y = -3.0 + 0.0 * t;
    
    % Definir parámetros de tiempo
    t = linspace(1.5707963267948966,3.141591653589793, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x1 = -14.0 + 3.0 * cos(t);
    y1 = -6.0 + 3.0 * sin(t);
    
    t = linspace(0, 10.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x2 = -17.0 + 0.0 * t;
    y2 = -6.0 - 2.0  * t;
    
    % Definir parámetros de tiempo
    t = linspace(3.141592653589793,4.71238898038469, 100); % 100 puntos
    % Definir las funciones para x(t) y y(t)
    x3 = -14.0 + 3.0 * cos(t);
    y3 = -26.0 + 3.0 * sin(t);
    
    t = linspace(0, 10.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x4 = -14.0 + 2.0 * t;
    y4 = -29.0 + 0.0 * t;
    
    % Definir parámetros de tiempo
    t = linspace(-1.5707963267948966 ,0.0, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x5 = 6.0 + 3.0 * cos(t);
    y5 = -26.0 + 3.0 * sin(t);
    % 
    t = linspace(0, 10.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x6 = 9.0 + 0.0 * t;
    y6 = -26.0 + 2.0  * t;
    
    % Definir parámetros de tiempo
    t = linspace(0.0 , 1.5707953267948966, 100); % 100 puntos
    % Definir las funciones para x(t) y y(t)
    x7 = 6.0 + 3.0 * cos(t);
    y7 = -6.0 + 3.0 * sin(t);

    % Unir las trayectorias
    x_total = [x, x1, x2, x3, x4, x5, x6, x7];
    y_total = [y, y1, y2, y3, y4, y5, y6, y7];
elseif path == 13
    t = linspace(0, 10.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = 6.0 - 2.0 * t;
    y = -1.0 + 0.0 * t;
    
    % Definir parámetros de tiempo
    t = linspace(1.5707963267948966 , 3.141592653589793, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x1 = -14.0 + 5.0 * cos(t);
    y1 = -6.0 + 5.0 * sin(t);
    
    t = linspace(0, 10.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x2 = -19.0 + 0.0 * t;
    y2 = -6.0 - 2.0  * t;
    
    % Definir parámetros de tiempo
    t = linspace(3.141592653589793 , 4.71238898038469, 100); % 100 puntos
    % Definir las funciones para x(t) y y(t)
    x3 = -14.0 + 5.0 * cos(t);
    y3 = -26.0 + 5.0 * sin(t);
    
    t = linspace(0, 10.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x4 = -14.0 + 2.0 * t;
    y4 = -31.0 + 0.0 * t;
    
    % Definir parámetros de tiempo
    t = linspace(-1.5707963267948966 ,0.0, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x5 = 6.0 + 5.0 * cos(t);
    y5 = -26.0 + 5.0 * sin(t);
   
    t = linspace(0, 10.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x6 = 11.0 + 0.0 * t;
    y6 = -26.0 + 2.0  * t;
    
    % Definir parámetros de tiempo
    t = linspace(0.0 , 1.5707953267948966, 100); % 100 puntos
    % Definir las funciones para x(t) y y(t)
    x7 = 6.0 + 5.0 * cos(t);
    y7 = -6.0 + 5.0 * sin(t);

    % Unir las trayectorias
    x_total = [x, x1, x2, x3, x4, x5, x6, x7];
    y_total = [y, y1, y2, y3, y4, y5, y6, y7];

elseif path == 15
    t = linspace(0, 30.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = 0.0 + 0.0 * t;
    y = 0.0 - 1.0 * t;
   
    % Unir las trayectorias
    x_total = [x];
    y_total = [y];
elseif path == -1
    x = [];
    y = [];
    % Unir las trayectorias
    x_total = [x];
    y_total = [y];
end

end







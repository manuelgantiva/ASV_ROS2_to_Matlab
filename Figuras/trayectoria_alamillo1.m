function [x_total, y_total] = trayectoria_alamillo1(path)

if path == 0
   t = linspace(0, 3.3333333333333335, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = -2.0 + 0.0 * t;
    y = -6.0 - 6.0 * t;
    
    % Definir parámetros de tiempo
    t = linspace(3.141592653589793, 6.283185307179586, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x1 = 4.0 + 6.0 * cos(t);
    y1 = -26.0 + 6.0 * sin(t);
    
    t = linspace(0, 3.33333333335, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x2 = 10.0 + 0.0 * t;
    y2 = -26.0 + 6.0 * t;
    
    % Definir parámetros de tiempo
    t = linspace(0.0 , 3.141592653589793, 100); % 100 puntos
    % Definir las funciones para x(t) y y(t)
    x3 = 4.0 + 6.0 * cos(t);
    y3 = -6.0 + 6.0 * sin(t);
    
    % Unir las trayectorias
    x_total = [x, x1, x2, x3];
    y_total = [y, y1, y2, y3];

elseif path == 1
    % Trayectorias parametrizadas
    t = linspace(0, 4.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = -2.0 + 0.0 * t;
    y = -6.0 - 5.0 * t;
    
    % Definir parámetros de tiempo
    t = linspace(3.141592653589793, 6.283185307179586, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x1 = 3.0 + 5.0 * cos(t);
    y1 = -26.0 + 5.0 * sin(t);
    
    t = linspace(0, 4.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x2 = 8.0 + 0.0 * t;
    y2 = -26.0 + 5.0 * t;
    
    % Definir parámetros de tiempo
    t = linspace(0.0 , 3.141592653589793, 100); % 100 puntos
    % Definir las funciones para x(t) y y(t)
    x3 = 3.0 + 5.0 * cos(t);
    y3 = -6.0 + 5.0 * sin(t);
    
    % Unir las trayectorias
    x_total = [x, x1, x2, x3];
    y_total = [y, y1, y2, y3];

elseif path == 2
    % Trayectorias parametrizadas
    t = linspace(0, 5.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = -2.0 + 0.0 * t;
    y = -6.0 - 4.0 * t;
    
    % Definir parámetros de tiempo
    t = linspace(3.141592653589793, 6.283185307179586, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x1 = 2.0 + 4.0 * cos(t);
    y1 = -26.0 + 4.0 * sin(t);
    
    t = linspace(0, 5.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x2 = 6.0 + 0.0 * t;
    y2 = -26.0 + 4.0 * t;
    
    % Definir parámetros de tiempo
    t = linspace(0.0 , 3.141592653589793, 100); % 100 puntos
    % Definir las funciones para x(t) y y(t)
    x3 = 2.0 + 4.0 * cos(t);
    y3 = -6.0 + 4.0 * sin(t);
    
    % Unir las trayectorias
    x_total = [x, x1, x2, x3];
    y_total = [y, y1, y2, y3];

elseif path == 3
    % Trayectorias parametrizadas
    t = linspace(0, 6.666666666666667, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = -2.0 + 0.0 * t;
    y = -6.0 - 3.0 * t;
    
    % Definir parámetros de tiempo
    t = linspace(3.141592653589793, 6.283185307179586, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x1 = 1.0 + 3.0 * cos(t);
    y1 = -26.0 + 3.0 * sin(t);
    
    t = linspace(0, 6.666666666666667, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x2 = 4.0 + 0.0 * t;
    y2 = -26.0 + 3.0 * t;
    
    % Definir parámetros de tiempo
    t = linspace(0.0 , 3.141592653589793, 100); % 100 puntos
    % Definir las funciones para x(t) y y(t)
    x3 = 1.0 + 3.0 * cos(t);
    y3 = -6.0 + 3.0 * sin(t);
    
    % Unir las trayectorias
    x_total = [x, x1, x2, x3];
    y_total = [y, y1, y2, y3];

elseif path == 4
    % Trayectorias parametrizadas
    t = linspace(0, 10.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = -2.0 + 0.0 * t;
    y = -6.0 - 2.0 * t;
    
    % Definir parámetros de tiempo
    t = linspace(3.141592653589793, 6.283185307179586, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x1 = 0.0 + 2.0 * cos(t);
    y1 = -26.0 + 2.0 * sin(t);
    
    t = linspace(0, 10.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x2 = 2.0 + 0.0 * t;
    y2 = -26.0 + 2.0 * t;
    
    % Definir parámetros de tiempo
    t = linspace(0.0 , 3.141592653589793, 100); % 100 puntos
    % Definir las funciones para x(t) y y(t)
    x3 = 0.0 + 2.0 * cos(t);
    y3 = -6.0 + 2.0 * sin(t);
    
    % Unir las trayectorias
    x_total = [x, x1, x2, x3];
    y_total = [y, y1, y2, y3];

elseif path == 5
    % Trayectorias parametrizadas
    t = linspace(0, 3.3333333333333335, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = 6.0 - 6.0 * t;
    y = 0.0 + 0.0 * t;
    
    % Definir parámetros de tiempo
    t = linspace(1.5707963267948966,3.141591653589793, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x1 = -14.0 + 6.0 * cos(t);
    y1 = -6.0 + 6.0 * sin(t);
    
    t = linspace(0, 3.33333333335, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x2 = -20.0 + 0.0 * t;
    y2 = -6.0 - 6.0  * t;
    
    % Definir parámetros de tiempo
    t = linspace(3.141592653589793,4.71238898038469, 100); % 100 puntos
    % Definir las funciones para x(t) y y(t)
    x3 = -14.0 + 6.0 * cos(t);
    y3 = -26.0 + 6.0 * sin(t);
    
    t = linspace(0, 3.3333333333333335, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x4 = -14.0 + 6.0 * t;
    y4 = -32.0 + 0.0 * t;
    
    % Definir parámetros de tiempo
    t = linspace(-1.5707963267948966 ,0.0, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x5 = 6.0 + 6.0 * cos(t);
    y5 = -26.0 + 6.0 * sin(t);
    
    t = linspace(0, 3.33333333335, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x6 = 12.0 + 0.0 * t;
    y6 = -26.0 + 6.0  * t;
    
    % Definir parámetros de tiempo
    t = linspace(0.0 , 1.5707953267948966, 100); % 100 puntos
    % Definir las funciones para x(t) y y(t)
    x7 = 6.0 + 6.0 * cos(t);
    y7 = -6.0 + 6.0 * sin(t);
    
    % Unir las trayectorias
    x_total = [x, x1, x2, x3, x4, x5, x6, x7];
    y_total = [y, y1, y2, y3, y4, y5, y6, y7];

elseif path == 6
    % Trayectorias parametrizadas
    t = linspace(0, 4.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = 6.0 - 5.0 * t;
    y = 0.0 + 0.0 * t;
    
    % Definir parámetros de tiempo
    t = linspace(1.5707963267948966,3.141591653589793, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x1 = -14.0 + 5.0 * cos(t);
    y1 = -5.0 + 5.0 * sin(t);
    
    t = linspace(0, 4.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x2 = -19.0 + 0.0 * t;
    y2 = -5.0 - 5.0  * t;
    
    % Definir parámetros de tiempo
    t = linspace(3.141592653589793,4.71238898038469, 100); % 100 puntos
    % Definir las funciones para x(t) y y(t)
    x3 = -14.0 + 5.0 * cos(t);
    y3 = -25.0 + 5.0 * sin(t);
    
    t = linspace(0, 4.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x4 = -14.0 + 5.0 * t;
    y4 = -30.0 + 0.0 * t;
    
    % Definir parámetros de tiempo
    t = linspace(-1.5707963267948966 ,0.0, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x5 = 6.0 + 5.0 * cos(t);
    y5 = -25.0 + 5.0 * sin(t);
    
    t = linspace(0, 4.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x6 = 11.0 + 0.0 * t;
    y6 = -25.0 + 5.0  * t;
    
    % Definir parámetros de tiempo
    t = linspace(0.0 , 1.5707953267948966, 100); % 100 puntos
    % Definir las funciones para x(t) y y(t)
    x7 = 6.0 + 5.0 * cos(t);
    y7 = -5.0 + 5.0 * sin(t);
    
    % Unir las trayectorias
    x_total = [x, x1, x2, x3, x4, x5, x6, x7];
    y_total = [y, y1, y2, y3, y4, y5, y6, y7];

elseif path == 7
    % Trayectorias parametrizadas
    t = linspace(0, 5.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = 6.0 - 4.0 * t;
    y = 0.0 + 0.0 * t;
    
    % Definir parámetros de tiempo
    t = linspace(1.5707963267948966,3.141591653589793, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x1 = -14.0 + 4.0 * cos(t);
    y1 = -4.0 + 4.0 * sin(t);
    
    t = linspace(0, 5.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x2 = -18.0 + 0.0 * t;
    y2 = -4.0 - 4.0  * t;
    
    % Definir parámetros de tiempo
    t = linspace(3.141592653589793,4.71238898038469, 100); % 100 puntos
    % Definir las funciones para x(t) y y(t)
    x3 = -14.0 + 4.0 * cos(t);
    y3 = -24.0 + 4.0 * sin(t);
    
    t = linspace(0, 5.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x4 = -14.0 + 4.0 * t;
    y4 = -28.0 + 0.0 * t;
    
    % Definir parámetros de tiempo
    t = linspace(-1.5707963267948966 ,0.0, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x5 = 6.0 + 4.0 * cos(t);
    y5 = -24.0 + 4.0 * sin(t);
    
    t = linspace(0, 5.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x6 = 10.0 + 0.0 * t;
    y6 = -24.0 + 4.0  * t;
    
    % Definir parámetros de tiempo
    t = linspace(0.0 , 1.5707953267948966, 100); % 100 puntos
    % Definir las funciones para x(t) y y(t)
    x7 = 6.0 + 4.0 * cos(t);
    y7 = -4.0 + 4.0 * sin(t);
    
    % Unir las trayectorias
    x_total = [x, x1, x2, x3, x4, x5, x6, x7];
    y_total = [y, y1, y2, y3, y4, y5, y6, y7];

elseif path == 8
    % Trayectorias parametrizadas
    t = linspace(0, 10.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = 2.0 + 0.0 * t;
    y = -6.0 - 2.0 * t;
    
    % Definir parámetros de tiempo
    t = linspace(3.141592653589793, 6.283185307179586, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x1 = 4.0 + 2.0 * cos(t);
    y1 = -26.0 + 2.0 * sin(t);
    
    t = linspace(0, 10.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x2 = 6.0 + 0.0 * t;
    y2 = -26.0 + 2.0 * t;
    
    % Definir parámetros de tiempo
    t = linspace(0.0 , 3.141592653589793, 100); % 100 puntos
    % Definir las funciones para x(t) y y(t)
    x3 = 4.0 + 2.0 * cos(t);
    y3 = -6.0 + 2.0 * sin(t);
    
    % Unir las trayectorias
    x_total = [x, x1, x2, x3];
    y_total = [y, y1, y2, y3];

elseif path == 9
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
elseif path == 10
    % Trayectorias parametrizadas
    t = linspace(0, 7.5, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = 3.0 + 0.0 * t;
    y = -6.0 - 2.0 * t;
    
    % Definir parámetros de tiempo
    t = linspace(3.141592653589793 , 4.173674215590471, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x1 = 1.0 - 2.0 * cos(t);
    y1 = -21.0 + 2.0 * sin(t);
    
    t = linspace(0, 0.6, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x2 = 2.0260664198611105 - 1.7167375169295385 * t;
    y2 = -22.71673751692954 - 1.0260664198611134 * t;
    
    % Definir parámetros de tiempo
    t = linspace(2.109511091589117 , 3.141592691589117, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x3 = 2.02 + 2.0 * cos(t);
    y3 = -25.04 + 2.0 * sin(t);
    
    t = linspace(0, 0.5, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x4 = 0.0 + 0.0 * t;
    y4 = -25.0 - 2.0 * t;
    
    % Definir parámetros de tiempo
    t = linspace(3.141592653589793, 6.283185307179586, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x5 = 2.0 + 2.0 * cos(t);
    y5 = -26.0 + 2.0 * sin(t);
    
    t = linspace(0, 0.5, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x6 = 4.0 + 0.0 * t;
    y6 = -26.0 + 2.0 * t;
    
    % Definir parámetros de tiempo
    t = linspace(0.0 , 1.0320815620006778, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x7 = 2.0 + 2.0 * cos(t);
    y7 = -25.0 + 2.0 * sin(t);
    
    t = linspace(0, 0.6, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x8 = 3.0260664198611105 - 1.7167375169295416 * t;
    y8 = -23.28326248307046 + 1.026066419861108 * t;
    
    % Definir parámetros de tiempo
    t = linspace(-1.0320815620006787 , 0.0, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x9 = 3.0 - 2.0 * cos(t);
    y9 = -21. + 2.0 * sin(t);
    
    t = linspace(0, 7.5, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x10 = 1.0 + 0.0 * t;
    y10 = -21.0 + 2.0 * t;
    
    % Unir las trayectorias
    x_total = [x, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10];
    y_total = [y, y1, y2, y3, y4, y5, y6, y7, y8, y9, y10];
elseif path == 11
    % Trayectorias parametrizadas
    t = linspace(0, 5.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = -2.0 + 0.0 * t;
    y = -6.0 - 4.0 * t;
    
    % Definir parámetros de tiempo
    t = linspace(3.141592653589793, 6.283185307179586, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x1 = 2.0 + 4.0 * cos(t);
    y1 = -26.0 + 4.0 * sin(t);
    
    t = linspace(0, 5.0, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x2 = 6.0 + 0.0 * t;
    y2 = -26.0 + 4.0 * t;
    
    % Unir las trayectorias
    x_total = [x, x1, x2];
    y_total = [y, y1, y2];
end

end







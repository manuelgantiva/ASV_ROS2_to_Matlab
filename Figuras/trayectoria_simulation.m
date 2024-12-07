function [x_total, y_total] = trayectoria_simulation(path)

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
    t = linspace(0,  8.333333333333334, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = 20 + 6 * t;
    y =50 + 0 * t;
    
    % Definir parámetros de tiempo
    t = linspace(1.5707963267948966 , 4.71238898038469, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x1 = 70.0 - 6  * cos(t);
    y1 = 44 + 6 * sin(t);
    
    t = linspace(0, 8.333333333333334, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x2 = 70 + -6.0 * t;
    y2 = 38 + 0 * t;
    
    % Definir parámetros de tiempo
    t = linspace(-1.5707963267948966 , 1.5707963267948966, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x3 = 20 - 6 * cos(t);
    y3 = 44 + 6  * sin(t);
    
    % Unir las trayectorias
    x_total = [x, x1, x2, x3];
    y_total = [y, y1, y2, y3];

elseif path == 2
   t = linspace(0, 8.333333333333334, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x =  20 + 6 * t;
    y =   52 + 0   * t;
    
    % Definir parámetros de tiempo
    t = linspace(1.5707963267948966 , 4.71238898038469, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x1 = 70.0 - 8 * cos(t);
    y1 =44 + 8 * sin(t);
    % 
    t = linspace(0, 8.333333333333334, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x2 =  70 + -6.0 * t;
    y2 =36 + 0  * t;
    
    % Definir parámetros de tiempo
    t = linspace(-1.5707963267948966 , 1.5707963267948966, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x3 = 19.99999970197678 - 8 * cos(t);
    y3 =44 + 8 * sin(t);
    
    % Unir las trayectorias
    x_total = [x, x1, x2, x3];
    y_total = [y, y1, y2, y3];

elseif path == 3
    % Trayectorias parametrizadas
    t = linspace(0, 8.333333333333334, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x =  20 + 6 * t;
    y = 54 + 0   * t;
    
    % Definir parámetros de tiempo
    t = linspace(1.5707963267948966 , 4.71238898038469, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x1 = 70.0 - 10* cos(t);
    y1 =44 + 10 * sin(t);
    
    t = linspace(0, 8.333333333333334, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x2 = 70 + -6 * t;
    y2 = 34 + 0  * t;
    
    % Definir parámetros de tiempo
    t = linspace(-1.5707963267948966 , 1.5707963267948966, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x3 =  19.99999970197678 - 10  * cos(t);
    y3 =44 + 10* sin(t);
    
    % Unir las trayectorias
    x_total = [x, x1, x2, x3];
    y_total = [y, y1, y2, y3];

elseif path == 4
    % Trayectorias parametrizadas
   t = linspace(0,  8.333333333333334, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = 20 + 6 * t;
    y = 50 + 0 * t;
    
    % Definir parámetros de tiempo
    t = linspace( -1.5707963267948966 , 0.0, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x1 = 70.0 + 6 * cos(t);
    y1 = 56 + 6 * sin(t);
    
    t = linspace(0, 8.333333333333334, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x2 = 76 + 0 * t;
    y2 = 56 + 6  * t;
    
    % Definir parámetros de tiempo
    t = linspace(0.0 , 1.5707963267948966, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x3 =  69.99999999999999 + 6* cos(t);
    y3 =106.0 + 6* sin(t);
    
    t = linspace(0,  8.333333333333334, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x4 = 70 + -6.0* t;
    y4 = 112 + 0   * t;
    
    % Definir parámetros de tiempo
    t = linspace(1.5707963267948966 , 3.141592653589793, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x5 = 20.000000298023227 + 6 * cos(t);
    y5 =106 + 6  * sin(t);
    % 
    t = linspace(0, 8.333333333333334, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x6 = 14 + 0  * t;
    y6 = 106 + -6.0* t;
    
    % Definir parámetros de tiempo
    t = linspace(3.141592653589793 , 4.71238898038469, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x7 =   20.0 + 6 * cos(t);
    y7 =56.0 + 6* sin(t);
    
    % Unir las trayectorias
    x_total = [x, x1, x2, x3, x4, x5, x6, x7];
    y_total = [y, y1, y2, y3, y4, y5, y6, y7];

elseif path == 5
    % Trayectorias parametrizadas
    t = linspace(0,  8.333333333333334, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x =  20 + 6.0 * t;
    y = 48 + 0    * t;
    
    % Definir parámetros de tiempo
    t = linspace(-1.5707963267948966 , 0.0 , 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x1 =  70.0 + 8* cos(t);
    y1 =56 + 8 * sin(t);
    % 
    t = linspace(0,  8.333333333333334, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x2 = 78 + 0 * t;
    y2 = 56 + 6  * t;
    
    % Definir parámetros de tiempo
    t = linspace(0.0 , 1.5707963267948966, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x3 =  70.00000000000003 + 8 * cos(t);
    y3 =106.0 + 8* sin(t);
    % 
    t = linspace(0,  8.333333333333334, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x4 = 70 + -6 * t;
    y4 = 114 + 0 * t;
    
    % Definir parámetros de tiempo
    t = linspace(1.5707963267948966 , 3.141592653589793, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x5 =  20.000000298023227 + 8 * cos(t);
    y5 =106 + 8* sin(t);
    
    t = linspace(0,  8.333333333333334, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x6 =12 + 0 * t;
    y6 =  106 + -6  * t;
    
    % Definir parámetros de tiempo
    t = linspace(3.141592653589793 , 4.71238898038469, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x7 =   20.0 + 8 * cos(t);
    y7 =56.0 + 8* sin(t);
    
    % Unir las trayectorias
    x_total = [x, x1, x2, x3, x4, x5, x6, x7];
    y_total = [y, y1, y2, y3, y4, y5, y6, y7];

elseif path == 6
    % Trayectorias parametrizadas
    t = linspace(0,  8.333333333333334, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x =   20 + 6  * t;
    y =  46 + 0   * t;
    % 
    % Definir parámetros de tiempo
    t = linspace( -1.5707963267948966 , 0.0, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x1 =70.0 + 10* cos(t);
    y1 =56 + 10   * sin(t);
    % 
    t = linspace(0, 8.333333333333334, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x2 = 80 + 0 * t;
    y2 = 56 + 6  * t;
    
    % Definir parámetros de tiempo
    t = linspace(0.0 , 1.5707963267948966 , 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x3 =  70.00000000000001 + 10 * cos(t);
    y3 =106.0 + 10  * sin(t);
    % 
    t = linspace(0,  8.333333333333334, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x4 = 70 + -6 * t;
    y4 = 116 + 0  * t;
    
    % Definir parámetros de tiempo
    t = linspace(1.5707963267948966 , 3.141592653589793 , 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x5 =  20.000000298023227 + 10 * cos(t);
    y5 =106 + 10* sin(t);
    
    t = linspace(0,  8.333333333333334, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x6 =10 + 0* t;
    y6 = 106 + -6  * t;
    
    % Definir parámetros de tiempo
    t = linspace(3.141592653589793 , 4.71238898038469, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x7 =   20.0 + 10 * cos(t);
    y7 =56.0 + 10 * sin(t);

    % Unir las trayectorias
    x_total = [x, x1, x2, x3, x4, x5, x6, x7];
    y_total = [y, y1, y2, y3, y4, y5, y6, y7];

elseif path == -1
    x = [];
    y = [];
    % Unir las trayectorias
    x_total = [x];
    y_total = [y];
end

end







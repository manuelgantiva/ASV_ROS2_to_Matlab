function [x_total, y_total] = trayectoria_gelves(path)

if path == 1
   
    t = linspace(0,  7.222222222222221, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = 9.8 +  0* t;
    y = -75.5 +  -4.5* t;
    
    % Definir parámetros de tiempo
    t = linspace(3.141592653589793 , 4.71238898038469, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x1 =    3.800000000000001 - 6* cos(t);
    y1 =  -108+ 6* sin(t);
    % 
    t = linspace(0,  4.844444444444445, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x2 = 3.8 + -4.5* t;
    y2 = -114 + 0   * t;
    
    % Definir parámetros de tiempo
    t = linspace(  1.5707963267948966 , 3.141592653589793 , 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x3 =   -17.99999974624237 + 3  * cos(t);
    y3 =  -117.0 + 3* sin(t);
    % 
    t = linspace(0,  1.111111111111112, 100); % Desde 0 hasta 1 con 100 puntos
    % % Definir las funciones para x(t) y y(t)
    x4 =  -21 + 0  * t;
    y4 = -117-4.4999999999999964 * t;
    
    % Definir parámetros de tiempo
    t = linspace( -3.1415926141650266 , -1.57079628737013, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x5 =   -18.000000000000004 + 3* cos(t);
    y5 =   -122.0 + 3* sin(t);
    
    t = linspace(0,   8.555555555555555, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x6 =  -18 + 4.5  * t;
    y6 = -125-0  * t;
    
    % Definir parámetros de tiempo
    t = linspace( -1.5707963267948966 , 0.0, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x7 =   20.4999996945262 + 3* cos(t);
    y7 =  -122.0 + 3* sin(t);
    
    
    t = linspace(0, 1.5833333333333335, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x8 =  23.5 + 0  * t;
    y8 = -122 +6  * t;
    
    % Definir parámetros de tiempo
    t = linspace( 0.0 , 1.5707963267948966 , 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x9 =   20.5 + 3* cos(t);
    y9 =  -112.5 + 3 * sin(t);
    
    
    t = linspace(0, 1.7111111730219812, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x10 =  20.5 + -4.5  * t;
    y10 = -109.5 +0  * t;
    
    % Definir parámetros de tiempo
    t = linspace( -1.5707963267948966 , 0.0, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x11 =   12.8 - 6* cos(t);
    y11 = -103.5 + 6  * sin(t);
       
    t = linspace(0,6.222222222222221, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x12 =  6.8 + 0   * t;
    y12 = -103.5 +4.5  * t;
   
    % Unir las trayectorias
    x_total = [x, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12];
    y_total = [y, y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12];

elseif path == 2
    
    t = linspace(0,  7.222222222222221, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = 8.3 +  0* t;
    y = -75.5 +  -4.5* t;
    
    % Definir parámetros de tiempo
    t = linspace(3.141592653589793 , 4.71238898038469, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x1 =    3.800000000000001 - 4.5* cos(t);
    y1 =  -108+ 4.5* sin(t);
    % 
    t = linspace(0,  4.844444444444445, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x2 = 3.8 + -4.5* t;
    y2 = -112.5 + 0   * t;
    
    % Definir parámetros de tiempo
    t = linspace(  1.5707963267948966 , 3.141592653589793 , 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x3 =   -17.99999974624237 + 4.5  * cos(t);
    y3 =  -117.0 + 4.5 * sin(t);
    % 
    t = linspace(0,  1.111111111111112, 100); % Desde 0 hasta 1 con 100 puntos
    % % Definir las funciones para x(t) y y(t)
    x4 =  -22.5 + 0  * t;
    y4 = -117-4.4999999999999964 * t;
    
    % Definir parámetros de tiempo
    t = linspace( -3.1415926141650266 , -1.57079628737013, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x5 =   -18.000000000000004 + 4.5* cos(t);
    y5 =   -122.0 + 4.5 * sin(t);
    
    t = linspace(0,   8.555555555555555, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x6 =  -18 + 4.5  * t;
    y6 = -126.5-0  * t;
    
    % Definir parámetros de tiempo
    t = linspace( -1.5707963267948966 , 0.0, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x7 =   20.4999996945262 + 4.5* cos(t);
    y7 =  -122.0 + 4.5* sin(t);
    
    
    t = linspace(0, 1.5833333333333335, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x8 =  25 + 0  * t;
    y8 = -122 +6  * t;
    
    % Definir parámetros de tiempo
    t = linspace( 0.0 , 1.5707963267948966 , 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x9 =   20.5 + 4.5* cos(t);
    y9 =  -112.5 + 4.5 * sin(t);
    
    
    t = linspace(0, 1.7111111730219812, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x10 =  20.5 + -4.5  * t;
    y10 = -108 +0  * t;
    
    % Definir parámetros de tiempo
    t = linspace( -1.5707963267948966 , 0.0, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x11 =   12.8 - 4.5* cos(t);
    y11 = -103.5 + 4.5  * sin(t);
    
    
    t = linspace(0,6.222222222222221, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x12 =  8.3 + 0   * t;
    y12 = -103.5 +4.5  * t;
    
    % Unir las trayectorias
    x_total = [x, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12];
    y_total = [y, y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12];

elseif path == 3

    t = linspace(0,  7.222222222222221, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = 6.8 +  0* t;
    y = -75.5 +  -4.5* t;
    
    % Definir parámetros de tiempo
    t = linspace(3.141592653589793 , 4.71238898038469, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x1 =    3.800000000000001 - 3* cos(t);
    y1 =  -108+ 3* sin(t);
    % 
    t = linspace(0,  4.844444444444445, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x2 = 3.8 + -4.5* t;
    y2 = -111 + 0   * t;
    
    % Definir parámetros de tiempo
    t = linspace(  1.5707963267948966 , 3.141592653589793 , 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x3 =   -17.99999974624237 + 6  * cos(t);
    y3 =  -117.0 + 6 * sin(t);
    % 
    t = linspace(0,  1.111111111111112, 100); % Desde 0 hasta 1 con 100 puntos
    % % Definir las funciones para x(t) y y(t)
    x4 =  -24 + 0  * t;
    y4 = -117-4.4999999999999964 * t;
    
    % Definir parámetros de tiempo
    t = linspace( -3.1415926141650266 , -1.57079628737013, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x5 =   -18.000000000000004 + 6* cos(t);
    y5 =   -122.0 + 6 * sin(t);
    
    t = linspace(0,   8.555555555555555, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x6 =  -18 + 4.5  * t;
    y6 = -128-0  * t;
    
    % Definir parámetros de tiempo
    t = linspace( -1.5707963267948966 , 0.0, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x7 =   20.4999996945262 + 6* cos(t);
    y7 =  -122.0 + 6* sin(t);
    
    
    t = linspace(0, 1.5833333333333335, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x8 =  26.5 + 0  * t;
    y8 = -122 +6  * t;
    
    % Definir parámetros de tiempo
    t = linspace( 0.0 , 1.5707963267948966 , 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x9 =   20.5 + 6* cos(t);
    y9 =  -112.5 + 6 * sin(t);
    
    t = linspace(0, 1.7111111730219812, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x10 =  20.5 + -4.5  * t;
    y10 = -106.5 +0  * t;
    
    % Definir parámetros de tiempo
    t = linspace( -1.5707963267948966 , 0.0, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x11 =   12.8 - 3* cos(t);
    y11 = -103.5 + 3  * sin(t);
    
    
    t = linspace(0,6.222222222222221, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x12 =  9.8 + 0   * t;
    y12 = -103.5 +4.5  * t;

    % Unir las trayectorias
    x_total = [x, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12];
    y_total = [y, y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12];

elseif path == 4
   
    t = linspace(0,  8.555555555555555, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = 20.5 + -4.5* t;
    y = -114 + 0   * t;
    
    % Definir parámetros de tiempo
    t = linspace(  1.5707963267948966 , 3.141592653589793 , 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x1 =   -17.99999974624237 + 3  * cos(t);
    y1 =  -117.0 + 3 * sin(t);
    % 
    t = linspace(0,  1.111111111111112, 100); % Desde 0 hasta 1 con 100 puntos
    % % Definir las funciones para x(t) y y(t)
    x2 =  -21 + 0  * t;
    y2 = -117-4.4999999999999964 * t;
    
    % Definir parámetros de tiempo
    t = linspace( -3.1415926141650266 , -1.57079628737013, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x3 =   -18.000000000000004 + 3* cos(t);
    y3 =   -122.0 + 3 * sin(t);
    
    t = linspace(0,   8.555555555555555, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x4 =  -18 + 4.5  * t;
    y4 = -125-0  * t;
    
    % Definir parámetros de tiempo
    t = linspace( -1.5707963267948966 , 0.0, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x5 =   20.4999996945262 + 3* cos(t);
    y5 =  -122.0 + 3* sin(t);
    
    t = linspace(0, 1.1111111111111112, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x6 =  23.5 +0  * t;
    y6 = -122+4.5  * t;
    
    % Definir parámetros de tiempo
    t = linspace(0.0 , 1.5707963267948966, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x7 =   20.5 + 3* cos(t);
    y7 =  -117.0 + 3* sin(t);
    
    % Unir las trayectorias
    x_total = [x, x1, x2, x3, x4, x5, x6, x7];
    y_total = [y, y1, y2, y3, y4, y5, y6, y7];

elseif path == 5
    
    t = linspace(0,  8.555555555555555, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = 20.5 + -4.5* t;
    y = -112.5 + 0   * t;
    
    % Definir parámetros de tiempo
    t = linspace(  1.5707963267948966 , 3.141592653589793 , 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x1 =   -17.99999974624237 + 4.5  * cos(t);
    y1 =  -117.0 + 4.5 * sin(t);
    % 
    t = linspace(0,  1.111111111111112, 100); % Desde 0 hasta 1 con 100 puntos
    % % Definir las funciones para x(t) y y(t)
    x2 =  -22.5 + 0  * t;
    y2 = -117-4.4999999999999964 * t;
    
    % Definir parámetros de tiempo
    t = linspace( -3.1415926141650266 , -1.57079628737013, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x3 =   -18.000000000000004 + 4.5* cos(t);
    y3 =   -122.0 + 4.5 * sin(t);
    
    t = linspace(0,   8.555555555555555, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x4 =  -18 + 4.5  * t;
    y4 = -126.5-0  * t;
    
    % Definir parámetros de tiempo
    t = linspace( -1.5707963267948966 , 0.0, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x5 =   20.4999996945262 + 4.5* cos(t);
    y5 =  -122.0 + 4.5* sin(t);
    
    t = linspace(0, 1.1111111111111112, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x6 =  25 +0  * t;
    y6 = -122+4.5  * t;
    
    % Definir parámetros de tiempo
    t = linspace(0.0 , 1.5707963267948966, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x7 =   20.5 + 4.5* cos(t);
    y7 =  -117.0 + 4.5* sin(t);

    % Unir las trayectorias
    x_total = [x, x1, x2, x3, x4, x5, x6, x7];
    y_total = [y, y1, y2, y3, y4, y5, y6, y7];

elseif path == 6
    
    t = linspace(0,  8.555555555555555, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x = 20.5 + -4.5* t;
    y = -111 + 0   * t;
    
    % Definir parámetros de tiempo
    t = linspace(  1.5707963267948966 , 3.141592653589793 , 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x1 =   -17.99999974624237 + 6  * cos(t);
    y1 =  -117.0 + 6 * sin(t);
    % 
    t = linspace(0,  1.111111111111112, 100); % Desde 0 hasta 1 con 100 puntos
    % % Definir las funciones para x(t) y y(t)
    x2 =  -24 + 0  * t;
    y2 = -117-4.4999999999999964 * t;
    
    % Definir parámetros de tiempo
    t = linspace( -3.1415926141650266 , -1.57079628737013, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x3 =   -18.000000000000004 + 6* cos(t);
    y3 =   -122.0 + 6 * sin(t);
    
    t = linspace(0,   8.555555555555555, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x4 =  -18 + 4.5  * t;
    y4 = -128-0  * t;
    
    % Definir parámetros de tiempo
    t = linspace( -1.5707963267948966 , 0.0, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x5 =   20.4999996945262 + 6* cos(t);
    y5 =  -122.0 + 6* sin(t);
    
    t = linspace(0, 1.1111111111111112, 100); % Desde 0 hasta 1 con 100 puntos
    % Definir las funciones para x(t) y y(t)
    x6 =  26.5 +0  * t;
    y6 = -122+4.5  * t;
    
    % Definir parámetros de tiempo
    t = linspace(0.0 , 1.5707963267948966, 100); %  100 puntos
    % Definir las funciones para x(t) y y(t)
    x7 =   20.5 + 6* cos(t);
    y7 =  -117.0 + 6* sin(t);

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







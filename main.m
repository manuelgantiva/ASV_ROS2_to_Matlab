%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Autor: Thalia Morel and Manuel Gantiva
% Proyecto ECOPORT y AQUATRONIC
% Escuela Técnica Superior de Ingeniería 
% Universidad Loyola Andalucía
% Fecha: 30.04.2024
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Code that converts rosbag data to MATLAB data. All data and figures
% are saved in the Data and plots folders, which can be changed in
% destination_directory.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all;clc;clear;
folder = ['Rosbags 30-01-2025\ASV4-30-1-bag-24'];
asv = "ASV4";

addpath Extraer\
addpath Figuras\

directorio_destino = 'C:\Users\megantiva\Documents\MATLAB\Ros2Mat\Data';
% GENERAR DATOS Y GUARDAR EN CARPETA DATA
% Observador Guille
obs_guille = extract_obs(folder,asv + "/observer/state_observer_guille");             %asv_interfaces/msg/state_observer
% Observador Liu
obs_liu = extract_obs(folder,asv + "/observer/state_observer_liu");                   %asv_interfaces/msg/state_observer
% Observador Zonotopos
obs_zono = extract_obs(folder,asv +  "/observer/state_observer_zono");                 %asv_interfaces/msg/state_observer
obs_zono_min = extract_obs(folder,asv +  "/observer/state_observer_zono_min");         %asv_interfaces/msg/state_observer
obs_zono_max = extract_obs(folder,asv +  "/observer/state_observer_zono_max");         %asv_interfaces/msg/state_observer
sigmas_zono = extract_error(folder,asv +  "/observer/sigmas_zono");                    %geometry_msgs/msg/vector3
% Posiciones  
pose_local_gps= extract_local(folder,asv +  "/mavros/global_position/local");          %nav_msgs/msg/Odometry
pose_gps= extract_pose(folder,asv +  "/mavros/local_position/pose");                  %geometry_msgs/msg/pose_stamped
date_gps= extract_gps(folder,asv +  "/mavros/global_position/global");                %geometry_msgs/msg/pose_stamped
pose_data = extract_pose(folder,asv +  "/control/pose");                              %geometry_msgs/msg/pose_stamped
psi_data = extract_psi(folder,asv +  "/mavros/global_position/compass_hdg");          %std_msgs/msg/float64
pose_data_liu = extract_pose(folder,asv +  "/observer/pose_liu");                      %geometry_msgs/msg/pose_stamped
pose_data_obs = extract_pose(folder,asv +  "/observer/pose_guille");                   %geometry_msgs/msg/pose_stamped
pose_data_zono = extract_pose(folder,asv +  "/observer/pose_zono");                    %geometry_msgs/msg/pose_stamped
% velocidades
linvel_data = extract_vel(folder,asv +  "/mavros/local_position/velocity_body", 1);   %geometry_msgs/msg/twist_stamped
angvel_data = extract_vel(folder,asv +  "/comunication/imu_ext/data", 2);             %sensor_msgs/msg/imu -> solo velocidad angular
% Acceleraciones
accel_data = extract_vel(folder,asv +  "/mavros/imu/data", 3);                        %sensor_msgs/msg/imu -> velocidades lineales y cuaterniones  
accel_data_raw = extract_vel(folder,asv +  "/mavros/imu/data_raw", 3);                %sensor_msgs/msg/imu -> velocidades lineales y cuaterniones
accel_plane = extract_vel(folder,asv +  "/control/accel_imu", 4);                     %geometry_msgs/msg/twist -> velocidades lineales y angulos
accel_data_ext = extract_vel(folder,asv +  "/comunication/imu_ext/data", 3);          %sensor_msgs/msg/imu -> velocidades lineales y cuaterniones  
accel_plane_ext = extract_vel(folder,asv +  "/control/accel_imu_ext", 4);             %geometry_msgs/msg/twist -> velocidades lineales y angulos
% RC_ data
RC_data_out = extract_RC(folder,asv +  "/mavros/rc/out");                             %mavros_msgs/msg/rc_out
RC_data_in = extract_RC(folder,asv +  "/mavros/rc/in");                               %mavros_msgs/msg/rc_in
RC_data_over = extract_RCO(folder,asv +  "/mavros/rc/override");                      %mavros_msgs/msg/override_rc_in
% Reference
ref_llc_data = extract_ref(folder,asv +  "/control/reference_llc");                   %geometry_msgs/msg/vector3
ref_mlc_data = extract_float(folder,asv +  "/control/reference_mlc");                 %std_msgs/msg/float64
ref_hlc_data = extract_float(folder,asv +  "/control/reference_hlc");                 %std_msgs/msg/float64
% low level control Ifac
IG_data = extract_IG(folder,asv +  "/control/IG_ifac");                               %geometry_msgs/msg/vector3
% ref APM (ardupilot)
ref_APM_data = extract_ref_APM(folder,asv + "/mavros/setpoint_velocity/cmd_vel_unstamped");  %geometry_msgs/msg/twist
% PWM 
ref_PWM_data = extract_PWM(folder,asv +  "/control/pwm_values");                        %asv_interfaces/msg/pwm_values
% error mlc
error_data = extract_error(folder,asv +  "/control/error_mlc");                         %geometry_msgs/msg/vector3
% Xbee
% neighbor_data = extract_neighbor(folder,asv +  "/comunication/xbee_observer");        %asv_interfaces/msg/XbeeObserver
w_slave = extract_float(folder,asv +  "/comunication/mlc_slave");                       %std_msgs/msg/float64
% High level control MPC
ref_master = extract_error(folder,asv +  "/control/ref_master");                       %geometry_msgs/msg/vector3
w_virtual = extract_float(folder,asv +  "/control/w_virtual");                         %std_msgs/msg/float64

clear asv folder 

%% 
valorInicial = RC_data_in(1,3);
%Recorre cada matriz y resta el valorInicial de la última columna
angvel_data(:,end) = angvel_data(:, end) - valorInicial;
accel_data(:,end) = accel_data(:, end) - valorInicial;
accel_data_raw(:,end) = accel_data_raw(:, end) - valorInicial;
accel_plane(:,end) = accel_plane(:, end) - valorInicial;
accel_data_ext(:,end) = accel_data_ext(:, end) - valorInicial;
accel_plane_ext(:,end) = accel_plane_ext(:, end) - valorInicial;
linvel_data(:, end) = linvel_data(:, end) - valorInicial;
obs_guille(:, end) = obs_guille(:, end) - valorInicial;
obs_liu(:, end) = obs_liu(:, end) - valorInicial;
obs_zono(:, end) = obs_zono(:, end) - valorInicial;
obs_zono_min(:, end) = obs_zono_min(:, end) - valorInicial;
obs_zono_max(:, end) = obs_zono_max(:, end) - valorInicial;
sigmas_zono(:, end) = sigmas_zono(:, end) - valorInicial;
pose_local_gps(:, end) = pose_local_gps(:, end) - valorInicial;
pose_gps(:, end) = pose_gps(:, end) - valorInicial;
date_gps(:, end) = date_gps(:, end) - valorInicial;
pose_data(:, end) = pose_data(:, end) - valorInicial;
pose_data_liu(:, end) = pose_data_liu(:, end) - valorInicial;
pose_data_zono(:, end) = pose_data_zono(:, end) - valorInicial;
pose_data_obs(:, end) = pose_data_obs(:, end) - valorInicial;
psi_data(:, end) = psi_data(:, end) - valorInicial;
RC_data_in(:, end) = RC_data_in(:, end) - valorInicial;
RC_data_out(:, end) = RC_data_out(:, end) - valorInicial;
RC_data_over(:, end) = RC_data_over(:, end) - valorInicial;
ref_APM_data(:, end) = ref_APM_data(:, end) - valorInicial;
ref_llc_data(:, end) = ref_llc_data(:, end) - valorInicial;
ref_mlc_data(:, end) = ref_mlc_data(:, end) - valorInicial;
ref_hlc_data(:, end) = ref_hlc_data(:, end) - valorInicial;
ref_PWM_data(:, end) = ref_PWM_data(:, end) - valorInicial;
IG_data(:, end) = IG_data(:, end) - valorInicial;
error_data(:, end) = error_data(:, end) - valorInicial;
w_slave(:, end) = w_slave(:, end) - valorInicial;
ref_master(:, end) = ref_master(:, end) - valorInicial;
w_virtual(:, end) = w_virtual(:, end) - valorInicial;

sigmas_mod = [obs_zono(:, 7)-sigmas_zono(:,1), obs_zono(:, 8)-sigmas_zono(:,2), obs_zono(:, 9)-sigmas_zono(:,3), obs_zono(:, end)];     %Comentar si no se usan las sigmas modeladas

clear valorInicial

%% Correct IMU reference frame

% ref_llc_data(:, 2) = -1* ref_llc_data(:, 2);
% obs_guille(:, 6) = -1*obs_guille(:, 6);
% obs_guille(:, 3) = -1*obs_guille(:, 3);
% ref_llc_data(:, 3) = -(ref_llc_data(:, 3)-(2*ref_llc_data(1, 3)));
angvel_data(:, 1) = -1* angvel_data(:, 1);
linvel_data(:, 2) = -1* linvel_data(:, 2);
accel_data(:,4) = -1 * accel_data(:,4);
accel_data_raw(:,4) = -1 * accel_data_raw(:,4);
accel_data_ext(:,4) = -1 * accel_data_ext(:,4);


%% Convert the read data into tables

angvel_data = table(angvel_data(:,1),angvel_data(:,2), 'VariableNames', {'r_imu', 'tiempo'});
accel_data = table(accel_data(:,1),accel_data(:,2),accel_data(:,3),accel_data(:,4), accel_data(:,5), 'VariableNames', {'a_u', 'a_v', 'a_z', 'v_r', 'tiempo'});
accel_data_raw = table(accel_data_raw(:,1),accel_data_raw(:,2),accel_data_raw(:,3),accel_data_raw(:,4), accel_data_raw(:,5), 'VariableNames', {'a_u', 'a_v', 'a_z', 'v_r', 'tiempo'});
accel_plane = table(accel_plane(:,1),accel_plane(:,2),accel_plane(:,3),accel_plane(:,4),accel_plane(:,5),accel_plane(:,6),accel_plane(:,7),  'VariableNames', {'a_u', 'a_v', 'a_z', 'roll', 'pitch', 'yaw', 'tiempo'});
accel_data_ext = table(accel_data_ext(:,1),accel_data_ext(:,2),accel_data_ext(:,3),accel_data_ext(:,4), accel_data_ext(:,5), 'VariableNames', {'a_u', 'a_v', 'a_z', 'v_r', 'tiempo'});
accel_plane_ext = table(accel_plane_ext(:,1),accel_plane_ext(:,2),accel_plane_ext(:,3),accel_plane_ext(:,4),accel_plane_ext(:,5),accel_plane_ext(:,6),accel_plane_ext(:,7),  'VariableNames', {'a_u', 'a_v', 'a_z', 'roll', 'pitch', 'yaw', 'tiempo'});
linvel_data = table(linvel_data(:,1),linvel_data(:,2),linvel_data(:,3), 'VariableNames', {'u_imu','v_imu','tiempo'});
obs_guille = table(obs_guille(:,1),obs_guille(:,2),obs_guille(:,3),obs_guille(:,4),obs_guille(:,5),obs_guille(:,6),obs_guille(:,7),obs_guille(:,8),obs_guille(:,9),obs_guille(:,10), 'VariableNames', {'x_hat','y_hat','psi_hat','u_hat','v_hat','r_hat','su_hat','sv_hat','sr_hat','tiempo'});
obs_liu= table(obs_liu(:,1),obs_liu(:,2),obs_liu(:,3),obs_liu(:,4),obs_liu(:,5),obs_liu(:,6),obs_liu(:,7),obs_liu(:,8),obs_liu(:,9),obs_liu(:,10), 'VariableNames', {'x_hat','y_hat','psi_hat','u_hat','v_hat','r_hat','su_hat','sv_hat','sr_hat','tiempo'});
obs_zono= table(obs_zono(:,1),obs_zono(:,2),obs_zono(:,3),obs_zono(:,4),obs_zono(:,5),obs_zono(:,6),obs_zono(:,7),obs_zono(:,8),obs_zono(:,9),obs_zono(:,10), 'VariableNames', {'x_hat','y_hat','psi_hat','u_hat','v_hat','r_hat','su_hat','sv_hat','sr_hat','tiempo'});
obs_zono_min= table(obs_zono_min(:,1),obs_zono_min(:,2),obs_zono_min(:,3),obs_zono_min(:,4),obs_zono_min(:,5),obs_zono_min(:,6),obs_zono_min(:,7),obs_zono_min(:,8),obs_zono_min(:,9),obs_zono_min(:,10), 'VariableNames', {'x_hat','y_hat','psi_hat','u_hat','v_hat','r_hat','su_hat','sv_hat','sr_hat','tiempo'});
obs_zono_max= table(obs_zono_max(:,1),obs_zono_max(:,2),obs_zono_max(:,3),obs_zono_max(:,4),obs_zono_max(:,5),obs_zono_max(:,6),obs_zono_max(:,7),obs_zono_max(:,8),obs_zono_max(:,9),obs_zono_max(:,10), 'VariableNames', {'x_hat','y_hat','psi_hat','u_hat','v_hat','r_hat','su_hat','sv_hat','sr_hat','tiempo'});
sigmas_zono = table(sigmas_zono(:,1),sigmas_zono(:,2),sigmas_zono(:,3),sigmas_zono(:,4), 'VariableNames', {'s_u','s_v','s_r','tiempo'});
sigmas_mod = table(sigmas_mod(:,1),sigmas_mod(:,2),sigmas_mod(:,3),sigmas_mod(:,4), 'VariableNames', {'s_u','s_v','s_r','tiempo'});
pose_local_gps = table(pose_local_gps(:,1),pose_local_gps(:,2),pose_local_gps(:,3),pose_local_gps(:,4),'VariableNames',{'x','y','psi','tiempo'});
pose_gps = table(pose_gps(:,1),pose_gps(:,2),pose_gps(:,3),pose_gps(:,4),'VariableNames',{'x','y','psi','tiempo'});
date_gps = table(date_gps(:,1),date_gps(:,2),date_gps(:,3),date_gps(:,4),'VariableNames',{'lan','lon','alt','tiempo'});
pose_data = table(pose_data(:,1),pose_data(:,2),pose_data(:,3),pose_data(:,4),'VariableNames',{'x','y','psi','tiempo'});
pose_data_liu = table(pose_data_liu(:,1),pose_data_liu(:,2),pose_data_liu(:,3),pose_data_liu(:,4), 'VariableNames',{'x_hat','y_hat','psi_hat','tiempo'});
pose_data_obs = table(pose_data_obs(:,1),pose_data_obs(:,2),pose_data_obs(:,3),pose_data_obs(:,4), 'VariableNames',{'x_hat','y_hat','psi_hat','tiempo'});
pose_data_zono = table(pose_data_zono(:,1),pose_data_zono(:,2),pose_data_zono(:,3),pose_data_zono(:,4), 'VariableNames',{'x_hat','y_hat','psi_hat','tiempo'});
psi_data= table(psi_data(:,1),psi_data(:,2), 'VariableNames', {'psi_grados', 'tiempo'});
RC_data_in = table(RC_data_in(:,1),RC_data_in(:,2),RC_data_in(:,3), 'VariableNames', {'left','right','tiempo'});
RC_data_out= table(RC_data_out(:,1),RC_data_out(:,2),RC_data_out(:,3), 'VariableNames', {'left','right','tiempo'});
RC_data_over= table(RC_data_over(:,1),RC_data_over(:,2),RC_data_over(:,3), 'VariableNames', {'left','right','tiempo'});
ref_APM_data = table(ref_APM_data(:,1),ref_APM_data(:,2),ref_APM_data(:,3), 'VariableNames', {'u_ref','r_ref','tiempo'});
ref_llc_data =  table(ref_llc_data(:,1),ref_llc_data(:,2),ref_llc_data(:,3),ref_llc_data(:,4), 'VariableNames', {'u_ref','r_ref','psi_ref','tiempo'});
ref_mlc_data =  table(ref_mlc_data(:,1),ref_mlc_data(:,2), 'VariableNames', {'u_d','tiempo'});
ref_hlc_data =  table(ref_hlc_data(:,1),ref_hlc_data(:,2), 'VariableNames', {'u_f','tiempo'});
ref_PWM_data = table(ref_PWM_data(:,1),ref_PWM_data(:,2),ref_PWM_data(:,3), 'VariableNames', {'left','right','tiempo'});
IG_data = table(IG_data(:,1),IG_data(:,2),IG_data(:,3),IG_data(:,4), 'VariableNames', {'IGu','IGr','zone','tiempo'});
error_data = table(error_data(:,1),error_data(:,2),error_data(:,3),error_data(:,4), 'VariableNames', {'xe','ye','w','tiempo'});
w_slave = table(w_slave(:,1),w_slave(:,2), 'VariableNames', {'w_s','tiempo'});
w_virtual = table(w_virtual(:,1),w_virtual(:,2), 'VariableNames', {'w_v','tiempo'});
ref_master = table(ref_master(:,1),ref_master(:,2),ref_master(:,3),ref_master(:,4), 'VariableNames', {'U_f','U_m','U_s','tiempo'});
% neighbor_data = table(neighbor_data(:,1),neighbor_data(:,2),neighbor_data(:,3),neighbor_data(:,4),neighbor_data(:,5),neighbor_data(:,6),neighbor_data(:,7), 'VariableNames', {'x_n','y_n','psi_n','u_n','v_n','r_n','tiempo'});

%% Save files .mat

save(fullfile(directorio_destino, 'test.mat'));


%% Extract information from .mat

% close all
% % obtener variables en el Workspace
% directorio = "C:\Users\megantiva\Documents\MATLAB\Ros2Mat\Data";
% archivos = dir(fullfile(directorio, '*.mat'));
% for i = 1:length(archivos)
%     nombreArchivo = archivos(i).name;
%     load(nombreArchivo); 
% end
% directorio_destino =  "C:\Users\megantiva\Documents\MATLAB\Ros2Mat\Data";

%% Plot figuras
directorio_destino = 'C:\Users\megantiva\Documents\MATLAB\Ros2Mat\Plots';
addpath Figuras/

% figura_pose(pose_local_gps, pose_data_obs, pose_data_liu, directorio_destino)
% figura_vel_dis(angvel_data, linvel_data, obs_guille, obs_liu, directorio_destino)
% figura_accel(accel_data, angvel_data, obs_guille, linvel_data, directorio_destino)

figuraRC(RC_data_out, RC_data_in,  directorio_destino)
figura_v_d(angvel_data, linvel_data, obs_guille, obs_zono, obs_zono_min,obs_zono_max, directorio_destino)
figura_sigmas(obs_guille, obs_zono, sigmas_zono,sigmas_mod, directorio_destino)

figuraRefu(ref_llc_data, obs_guille, obs_zono, obs_zono_min,obs_zono_max, angvel_data,linvel_data, directorio_destino)
figuraIG(IG_data, directorio_destino)
%%
figuraMLC(error_data, ref_mlc_data, directorio_destino)
% figuraHLC(ref_hlc_data, error_data, w_slave, w_virtual, ref_master, ref_mlc_data, obs_zono,directorio_destino);

%% Link the timelines of all created figures

% figures = findall(0, 'Type', 'figure');
% axesList = [];
% for i = 1:length(figures)
%     ax = findall(figures(i), 'Type', 'axes');
%     axesList = [axesList; ax];
% end
% linkaxes(axesList, 'x');

%% Plot Mapas
addpath Mapas/
% trayectoria(pose_local_gps, pose_data_zono, pose_data_obs, directorio_destino,4,1)  %path , lake
Mapa_real(pose_local_gps, pose_data_zono, pose_data_obs, directorio_destino,15,1,false)
% Mapa_neighbor(pose_data_obs, neighbor_data, directorio_destino,5,9,1,false)
% % Lake = 0 Mapa Lago de la Vida Grande % %
% % Lake = 1 Mapa Lago del Alamillo Izquierda % %
% % Lake = 2 Mapa Lago del Alamillo Derecha % %
% % Lake = 3 Mapa Lago de la Vida Pequeño % %
% % Lake = 4 Mapa simulacion % %
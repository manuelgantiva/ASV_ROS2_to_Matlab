%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Autor: Thalia Morel and Manuel Gantiva
% Proyecto ECOPORT
% Escuela Técnica Superior de Ingeniería 
% Universidad Loyola Andalucía
% Fecha: 30.04.2024
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Código que pasa los rosbag a datos de MATLAB. Todos los datos y figuras
% se guardan en la carpeta Data, la cual se puede cambiar en
% directorio_destino.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all;clc;clear;
folder = 'Rosbags 25-04-2024/ASV3-25-4-bag-38';
addpath Extraer/
addpath Figuras/

directorio_destino = '/home/patrizio/Documents/MATLAB/ROS2Matlab/Data';
% GENERAR DATOS Y GUARDAR EN CARPETA DATA
% Observador Guille
obs_guille = extract_obs(folder, "/control/state_observer_guille");
% Observador Liu
obs_liu = extract_obs(folder, "/control/state_observer_liu");
% Posiciones
pose_gps= extract_pose(folder, "/mavros/local_position/pose");
pose_data = extract_pose(folder, "/control/pose");
psi_data = extract_psi(folder, "/mavros/global_position/compass_hdg");
pose_data_liu = extract_pose(folder, "/control/pose_liu");
pose_data_obs = extract_pose(folder, "/control/pose_guille");
% velocidades
linvel_data = extract_vel(folder, "/mavros/local_position/velocity_body", 1);
angvel_data = extract_vel(folder, "/mavros/imu/data", 2);
% RCOUT
RC_data_out = extract_RC(folder, "/mavros/rc/out");
% RCIN
RC_data_in = extract_RC(folder, "/mavros/rc/in");
% RCOVER
RC_data_over = extract_RCO(folder, "/mavros/rc/override");
% Reference
ref_llc_data = extract_ref(folder, "/control/reference_llc");
ref_mlc_data = extract_ref_mlc(folder, "/control/reference_mlc");
IGu_data = extract_IG(folder, "/control/IGu_ifac");
IGr_data = extract_IG(folder, "/control/IGr_ifac");
% ref APM (ardupilot)
ref_APM_data = extract_ref_APM(folder, "/mavros/setpoint_velocity/cmd_vel_unstamped");
% PWM 
ref_PWM_data = extract_PWM(folder, "/control/pwm_values");
% error
error_data = extract_error(folder, "/control/error_mlc");

%% 
valorInicial = RC_data_in(1,3);
% Recorre cada matriz y resta el valorInicial de la última columna
angvel_data(:,end) = angvel_data(:, end) - valorInicial;
linvel_data(:, end) = linvel_data(:, end) - valorInicial;
obs_guille(:, end) = obs_guille(:, end) - valorInicial;
obs_liu(:, end) = obs_liu(:, end) - valorInicial;
pose_gps(:, end) = pose_gps(:, end) - valorInicial;
pose_data(:, end) = pose_data(:, end) - valorInicial;
pose_data_liu(:, end) = pose_data_liu(:, end) - valorInicial;
pose_data_obs(:, end) = pose_data_obs(:, end) - valorInicial;
psi_data(:, end) = psi_data(:, end) - valorInicial;
RC_data_in(:, end) = RC_data_in(:, end) - valorInicial;
RC_data_out(:, end) = RC_data_out(:, end) - valorInicial;
RC_data_over(:, end) = RC_data_over(:, end) - valorInicial;
ref_APM_data(:, end) = ref_APM_data(:, end) - valorInicial;
ref_llc_data(:, end) = ref_llc_data(:, end) - valorInicial;
ref_mlc_data(:, end) = ref_mlc_data(:, end) - valorInicial;
ref_PWM_data(:, end) = ref_PWM_data(:, end) - valorInicial;
IGu_data(:, end) = IGu_data(:, end) - valorInicial;
IGr_data(:, end) = IGr_data(:, end) - valorInicial;
error_data(:, end) = error_data(:, end) - valorInicial;

%% Correct IMU reference frame

% ref_llc_data(:, 2) = -1* ref_llc_data(:, 2);
% obs_guille(:, 6) = -1*obs_guille(:, 6);
% obs_guille(:, 3) = -1*obs_guille(:, 3);
% ref_llc_data(:, 3) = -(ref_llc_data(:, 3)-(2*ref_llc_data(1, 3)));
angvel_data(:, 1) = -1* angvel_data(:, 1);

%% Prueba Gabi

angvel_data = table(angvel_data(:,1),angvel_data(:,2), 'VariableNames', {'r_imu', 'tiempo'});
linvel_data = table(linvel_data(:,1),linvel_data(:,2),linvel_data(:,3), 'VariableNames', {'u_imu','v_imu','tiempo'});
obs_guille = table(obs_guille(:,1),obs_guille(:,2),obs_guille(:,3),obs_guille(:,4),obs_guille(:,5),obs_guille(:,6),obs_guille(:,7),obs_guille(:,8),obs_guille(:,9),obs_guille(:,10), 'VariableNames', {'x_hat','y_hat','psi_hat','u_hat','v_hat','r_hat','su_hat','sv_hat','sr_hat','tiempo'});
obs_liu= table(obs_liu(:,1),obs_liu(:,2),obs_liu(:,3),obs_liu(:,4),obs_liu(:,5),obs_liu(:,6),obs_liu(:,7),obs_liu(:,8),obs_liu(:,9),obs_liu(:,10), 'VariableNames', {'x_hat','y_hat','psi_hat','u_hat','v_hat','r_hat','su_hat','sv_hat','sr_hat','tiempo'});
pose_gps = table(pose_gps(:,1),pose_gps(:,2),pose_gps(:,3),pose_gps(:,4),'VariableNames',{'x','y','psi','tiempo'});
pose_data = table(pose_data(:,1),pose_data(:,2),pose_data(:,3),pose_data(:,4),'VariableNames',{'x','y','psi','tiempo'});
pose_data_liu = table(pose_data_liu(:,1),pose_data_liu(:,2),pose_data_liu(:,3),pose_data_liu(:,4), 'VariableNames',{'x_hat','y_hat','psi_hat','tiempo'});
pose_data_obs = table(pose_data_obs(:,1),pose_data_obs(:,2),pose_data_obs(:,3),pose_data_obs(:,4), 'VariableNames',{'x_hat','y_hat','psi_hat','tiempo'});
psi_data= table(psi_data(:,1),psi_data(:,2), 'VariableNames', {'psi_grados', 'tiempo'});
RC_data_in = table(RC_data_in(:,1),RC_data_in(:,2),RC_data_in(:,3), 'VariableNames', {'left','right','tiempo'});
RC_data_out= table(RC_data_out(:,1),RC_data_out(:,2),RC_data_out(:,3), 'VariableNames', {'left','right','tiempo'});
RC_data_over= table(RC_data_over(:,1),RC_data_over(:,2),RC_data_over(:,3), 'VariableNames', {'left','right','tiempo'});
ref_llc_data =  table(ref_llc_data(:,1),ref_llc_data(:,2),ref_llc_data(:,3),ref_llc_data(:,4), 'VariableNames', {'u_ref','r_ref','psi_ref','tiempo'});
ref_mlc_data =  table(ref_mlc_data(:,1),ref_mlc_data(:,2), 'VariableNames', {'u_d','tiempo'});
IGu_data = table(IGu_data(:,1),IGu_data(:,2),IGu_data(:,3),IGu_data(:,4), 'VariableNames', {'u_dot_ref','error','sigma_u','tiempo'});
IGr_data = table(IGr_data(:,1),IGr_data(:,2),IGr_data(:,3),IGr_data(:,4), 'VariableNames', {'kr','kpsi','r_dot_ref','tiempo'});
error_data = table(error_data(:,1),error_data(:,2),error_data(:,3),error_data(:,4), 'VariableNames', {'xe','ye','w','tiempo'});

%% Save files .mat

% save(fullfile(directorio_destino, 'angvel_data.mat'));
% save(fullfile(directorio_destino, 'linvel_data.mat'));
% save(fullfile(directorio_destino, 'obs_guille.mat'));
% save(fullfile(directorio_destino, 'obs_liu.mat'));
% save(fullfile(directorio_destino, 'pose_gps.mat'));
% save(fullfile(directorio_destino, 'pose_data.mat'));
% save(fullfile(directorio_destino, 'pose_data_liu.mat'));
% save(fullfile(directorio_destino, 'pose_data_obs.mat'));
% save(fullfile(directorio_destino, 'psi_data.mat'));
% save(fullfile(directorio_destino, 'RC_data_in.mat'));
% save(fullfile(directorio_destino, 'RC_data_out.mat'));
% save(fullfile(directorio_destino, 'RC_data_over.mat'));
% save(fullfile(directorio_destino, 'ref_llc_data.mat'));
% save(fullfile(directorio_destino, 'ref_mlc_data.mat'));
% save(fullfile(directorio_destino, 'IGu_data.mat'));
% save(fullfile(directorio_destino, 'IGr_data.mat'));
% save(fullfile(directorio_destino, 'error_data.mat'));

%% Extract information from .mat

% close all
% % obtener variables en el Workspace
% directorio = "C:\Users\megantiva\OneDrive - Universidad Loyola Andalucía\Documentos\MATLAB\Ros2Mat\Data";
% archivos = dir(fullfile(directorio, '*.mat'));
% for i = 1:length(archivos)
%     nombreArchivo = archivos(i).name;
%     load(nombreArchivo); 
% end
% directorio_destino =  "C:\Users\megantiva\OneDrive - Universidad Loyola Andalucía\Documentos\MATLAB\Ros2Mat\Data";

%% Plot figuras

addpath Figuras/
figuraRC(RC_data_in, RC_data_out,  directorio_destino)
figura_pose(pose_data, pose_data_obs, pose_data_liu, directorio_destino)
figura_angvel(angvel_data, linvel_data, obs_guille, obs_liu, directorio_destino)
trayectoria(pose_data, pose_data_obs, pose_data_liu, directorio_destino,1)
figuraRefu(ref_llc_data, obs_guille, obs_liu, angvel_data,linvel_data, directorio_destino)
figuraIG(IGu_data, IGr_data, directorio_destino)
figuraMLC(error_data, ref_mlc_data, directorio_destino)


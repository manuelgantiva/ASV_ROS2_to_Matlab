%% Create custom msg
folderPath1 = fullfile(pwd,"custom");
ros2genmsg(folderPath1);
% %% extract zip file 
% % unzip('subset_12.zip');
% folderPath = fullfile(pwd,'Rosbags 18-01-2024/ASV3-18-1-bag-1/');
% % create ros2bagreader object
% bag = ros2bagreader(folderPath);
% baginfo = ros2("bag","info",folderPath);
function out = extract_error(folder_name, topic_name)
% Selección del tópico
    folderPath = fullfile(pwd,folder_name);
    bag = ros2bagreader(folderPath);
    bagSel = select(bag, "Topic", topic_name);
    data = readMessages(bagSel);
    % Inicialización de vectores
    num_messages = length(data);
    xe = zeros(num_messages, 1);
    ye = zeros(num_messages, 1);
    w = zeros(num_messages, 1);
    % time = zeros(num_messages, 1);
    
    % Extracción de datos
    for i = 1:num_messages
        % posiciones
        xe(i, 1) = data{i}.x;
        ye(i, 1) = data{i}.y;
        w(i, 1) = data{i}.z;
       
        % tiempo
        % format long
        % sec = data{i, 1}.header.stamp.sec;
        % nano = data{i, 1}.header.stamp.nanosec;
        % nano = single(nano)/1e9;
        % sec = single(mod(sec,1e6));
        % time(i,1) = sec + nano;
    end
    time = double(bagSel.MessageList{:,1});
    % Creación del vector de posición
    out = [xe, ye, w, time];
end
function out = extract_RCO(folder_name, topic_name)
    % Selección del tópico
    folderPath = fullfile(pwd,folder_name);
    bag = ros2bagreader(folderPath);
    bagSel = select(bag, "Topic", topic_name);
    data = readMessages(bagSel);
    % Inicialización de vectores
    num_messages = length(data);
    RC_L = zeros(num_messages, 1);
    RC_R = zeros(num_messages, 1);
    % time = zeros(num_messages, 1);
    
    % Extracción de datos
    for i = 1:num_messages
        % posiciones
        RC_L(i, 1) = data{i}.channels(10,1);
        RC_R(i, 1) = data{i}.channels(11,1);
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
    out = [RC_L, RC_R, time];
end
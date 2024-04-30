function out = extract_ref(folder_name, topic_name)
    % Selección del tópico
    folderPath = fullfile(pwd,folder_name);
    bag = ros2bagreader(folderPath);
    bagSel = select(bag, "Topic", topic_name);
    data = readMessages(bagSel);
    % Inicialización de vectores
    num_messages = length(data);
    u_ref = zeros(num_messages, 1);
    r_ref = zeros(num_messages, 1);
    psi_ref = zeros(num_messages, 1);
    
    % Extracción de datos
    for i = 1:num_messages
        % posiciones
        u_ref(i, 1) = data{i}.x;
        r_ref(i, 1) = data{i}.y;
        psi_ref(i, 1) = data{i}.z;
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
    out = [u_ref, r_ref, psi_ref, time];
end
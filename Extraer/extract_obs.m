function out = extract_obs(folder_name, topic_name)
    % Selección del tópico
    folderPath = fullfile(pwd,folder_name);
    bag = ros2bagreader(folderPath);
    bagSel = select(bag, "Topic", topic_name);
    data = readMessages(bagSel); 
    % Inicialización de vectores
    num_messages = length(data);
    x = zeros(num_messages, 1);
    y = zeros(num_messages, 1);
    z = zeros(num_messages, 1);
    u = zeros(num_messages, 1);
    v = zeros(num_messages, 1);
    r = zeros(num_messages, 1);
    sigma_u = zeros(num_messages, 1);
    sigma_v = zeros(num_messages, 1);
    sigma_r = zeros(num_messages, 1);
    % time = zeros(num_messages, 1);

    % Extracción de datos
    for i = 1:num_messages
        % posiciones
        x(i, 1) = data{i}.point.x;
        y(i, 1) = data{i}.point.y;
        z(i, 1) = data{i}.point.z;
        % velocidades
        u(i, 1) = data{i}.velocity.x;
        v(i, 1) = data{i}.velocity.y;
        r(i, 1) = data{i}.velocity.z;
        % perturbaciones
        sigma_u(i, 1) = data{i}.disturbances.x;
        sigma_v(i, 1) = data{i}.disturbances.y;
        sigma_r(i, 1) = data{i}.disturbances.z;
        % tiempo
        % format long
        % sec = data{i, 1}.header.stamp.sec;
        % nano = data{i, 1}.header.stamp.nanosec;
        % nano = single(nano)/1e9;
        % sec = single(mod(sec,1e6));
        % time(i,1) = sec + nano;
    end
    time = double(bagSel.MessageList{:,1});
    % time = time/1e9;
    % Creación del vector de posición
    out = [x y z u v r sigma_u sigma_v sigma_r time];
   
    % t = time;
end

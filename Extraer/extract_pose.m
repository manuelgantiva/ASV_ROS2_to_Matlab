function out = extract_pose(folder_name, topic_name)
    % Selección del tópico
    folderPath = fullfile(pwd,folder_name);
    bag = ros2bagreader(folderPath);
    bagSel = select(bag, "Topic", topic_name);
    data = readMessages(bagSel);
    % Inicialización de vectores
    num_messages = length(data);
    x = zeros(num_messages, 1);
    y = zeros(num_messages, 1);
    psi = zeros(num_messages, 1);
    % time = zeros(num_messages, 1);
    
    % Extracción de datos
    for i = 1:num_messages
        % posiciones
        x(i, 1) = data{i}.pose.position.x;
        y(i, 1) = data{i}.pose.position.y;
        % cuaterniones
        o_x = data{i}.pose.orientation.x;
        o_y = data{i}.pose.orientation.y;
        o_z = data{i}.pose.orientation.z;
        o_w = data{i}.pose.orientation.w;
        quat = [o_w o_x o_y o_z];
        eul = quat2eul(quat, "XYZ");
        psi(i,1) = eul(1,3);
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
    out = [x, y, psi, time];
end
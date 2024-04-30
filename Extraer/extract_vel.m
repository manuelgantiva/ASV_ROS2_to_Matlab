function out = extract_vel(folder_name, topic_name, num)
    % Selección del tópico
    folderPath = fullfile(pwd,folder_name);
    bag = ros2bagreader(folderPath);
    bagSel = select(bag, "Topic", topic_name);
    data = readMessages(bagSel);
    % Inicialización de vectores
    num_messages = length(data);
    u = zeros(num_messages, 1);
    v = zeros(num_messages, 1);
    r = zeros(num_messages, 1);
    % time = zeros(num_messages, 1);
    
    % Extracción de datos
    if num == 1
        for i = 1:num_messages
            %velocidad lineal
            u(i, 1) = data{i}.twist.linear.x;
            v(i, 1) = data{i}.twist.linear.y;
            % tiempo
            % format long
            % sec = data{i, 1}.header.stamp.sec;
            % nano = data{i, 1}.header.stamp.nanosec;
            % nano = single(nano)/1e9;
            % sec = single(mod(sec,1e6));
            % time(i,1) = sec + nano;
        end
        time = double(bagSel.MessageList{:,1});
        out = [u, v, time];
    else
        for i = 1:num_messages
            % velocidad angular
            r(i, 1) = data{i}.angular_velocity.z;
            % tiempo
            % format long
            % sec = data{i, 1}.header.stamp.sec;
            % nano = data{i, 1}.header.stamp.nanosec;
            % nano = single(nano)/1e9;
            % sec = single(mod(sec,1e6));
            % time(i,1) = sec + nano;
        end   
        time = double(bagSel.MessageList{:,1});
        out = [r, time];
    end

    % Creación del vector de posición
end
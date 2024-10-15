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
    au = zeros(num_messages, 1);
    av = zeros(num_messages, 1);
    az = zeros(num_messages, 1);
    roll = zeros(num_messages, 1);
    pitch = zeros(num_messages, 1);
    yaw = zeros(num_messages, 1);
    % time = zeros(num_messages, 1);
    
    % Extracción de datos
    switch num
        case 1
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
            % time = time/1e9;
            out = [u, v, time];
        case 2
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
            % time = time/1e9;
            out = [r, time];
        case 3
            for i = 1:num_messages
                % Acceleraciones lineales
                au(i, 1) = data{i}.linear_acceleration.x;
                av(i, 1) = data{i}.linear_acceleration.y;
                az(i, 1) = data{i}.linear_acceleration.z;
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
            % time = time/1e9;
            out = [au, av, az, r, time];
        case 4
            for i = 1:num_messages
                % Acceleraciones lineales
                au(i, 1) = data{i}.linear.x;
                av(i, 1) = data{i}.linear.y;
                az(i, 1) = data{i}.linear.z;
                roll(i, 1) = data{i}.angular.x;
                pitch(i, 1) = data{i}.angular.y;
                yaw(i, 1) = data{i}.angular.z;
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
            out = [au, av, az, roll, pitch, yaw, time];
        otherwise
            disp('El valor no es 1, 2 ni 3');
    end
end
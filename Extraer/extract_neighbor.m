function out = extract_neighbor(folder_name, topic_name)
% Selección del tópico
    folderPath = fullfile(pwd,folder_name);
    bag = ros2bagreader(folderPath);
    bagSel = select(bag, "Topic", topic_name);
    data = readMessages(bagSel);
    % Inicialización de vectores
    num_messages = length(data);
    x_n = zeros(num_messages, 1);
    y_n = zeros(num_messages, 1);
    psi_n = zeros(num_messages, 1);
    u_n = zeros(num_messages, 1);
    v_n = zeros(num_messages, 1);
    r_n = zeros(num_messages, 1);
    time = double(bagSel.MessageList{:,1});
    time = time/1e9;
    % Extracción de datos
    for i = num_messages:-1:1
        if(data{i}.counter==1)
            % posiciones
            x_n(i, 1) = data{i}.states.point.x;
            y_n(i, 1) = data{i}.states.point.y;
            psi_n(i, 1) = data{i}.states.point.z;
            u_n(i, 1) = data{i}.states.velocity.x;
            v_n(i, 1) = data{i}.states.velocity.y;
            r_n(i, 1) = data{i}.states.velocity.z;
        elseif (data{i}.counter==2)
            % posiciones
            x_n(i, 1) = data{i}.states(1).point.x;
            y_n(i, 1) = data{i}.states(1).point.y;
            psi_n(i, 1) = data{i}.states(1).point.z;
            u_n(i, 1) = data{i}.states(1).velocity.x;
            v_n(i, 1) = data{i}.states(1).velocity.y;
            r_n(i, 1) = data{i}.states(1).velocity.z;
        else
            x_n(i, :) = [];
            y_n(i, :) = [];
            psi_n(i, :) = [];
            u_n(i, :) = [];
            v_n(i, :) = [];
            r_n(i, :) = [];
            time(i, :) = [];
        end
       
    end
    % Creación del vector de posición
    out = [x_n, y_n, psi_n, u_n, v_n, r_n, time];
end
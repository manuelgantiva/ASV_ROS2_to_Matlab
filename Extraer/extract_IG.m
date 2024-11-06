function out = extract_IG(folder_name, topic_name)
    % Selección del tópico
    folderPath = fullfile(pwd,folder_name);
    bag = ros2bagreader(folderPath);
    bagSel = select(bag, "Topic", topic_name);
    data = readMessages(bagSel);
    % Inicialización de vectores
    num_messages = length(data);
    u_dot_ref = zeros(num_messages, 1);
    u_error = zeros(num_messages, 1);
    sigma = zeros(num_messages, 1);
    
    % Extracción de datos
    for i = 1:num_messages
        % posiciones
        u_dot_ref(i, 1) = data{i}.x;
        u_error(i, 1) = data{i}.y;
        sigma(i, 1) = data{i}.z;
    end
    time = double(bagSel.MessageList{:,1});
    % time = time/1e9;
    % Creación del vector de posición
    out = [u_dot_ref, u_error, sigma, time];
end
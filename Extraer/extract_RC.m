function out = extract_RC(folder_name, topic_name)
    % Selección del tópico
    folderPath = fullfile(pwd,folder_name);
    bag = ros2bagreader(folderPath);
    bagSel = select(bag, "Topic", topic_name);
    data = readMessages(bagSel);
    % Inicialización de vectores
    num_messages = length(data);
    RC_L = zeros(num_messages, 1);
    RC_R = zeros(num_messages, 1);
    
    % Extracción de datos
    for i = 1:num_messages
        % posiciones
        RC_L(i, 1) = data{i}.channels(1,1);
        RC_R(i, 1) = data{i}.channels(3,1);
    end
    time = double(bagSel.MessageList{:,1});
    % time = time/1e9;
    % Creación del vector de posición
    out = [RC_L, RC_R, time];
end
function out = extract_psi(folder_name, topic_name)
    % Selección del tópico
    folderPath = fullfile(pwd,folder_name);
    bag = ros2bagreader(folderPath);
    bagSel = select(bag, "Topic", topic_name);
    data = readMessages(bagSel);
    % Inicialización de vectores
    num_messages = length(data);
    psi = zeros(num_messages, 1);
    % Extracción de datos
    for i = 1:num_messages
        % posiciones
        psi(i, 1) = data{i}.data;
    end
    time = double(bagSel.MessageList{:,1});
    % time = time/1e9;
    % Creación del vector de posición
    out = [psi, time];
end
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
    end
    time = double(bagSel.MessageList{:,1});
    % time = time/1e9;
    % Creación del vector de posición
    out = [u_ref, r_ref, psi_ref, time];
end
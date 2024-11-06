function out = extract_PWM(folder_name, topic_name)
    % Selección del tópico
    folderPath = fullfile(pwd,folder_name);
    bag = ros2bagreader(folderPath);
    bagSel = select(bag, "Topic", topic_name);
    data = readMessages(bagSel);
    % Inicialización de vectores
    num_messages = length(data);
    PWM_L = zeros(num_messages, 1);
    PWM_R = zeros(num_messages, 1);
   
    % Extracción de datos
    for i = 1:num_messages
        % posiciones
        PWM_L(i, 1) = data{i}.t_left;
        PWM_R(i, 1) = data{i}.t_righ;
    end
    time = double(bagSel.MessageList{:,1});
    % time = time/1e9;
    % Creación del vector de posición
    out = [PWM_L, PWM_R, time];
end
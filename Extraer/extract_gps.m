function out = extract_gps(folder_name, topic_name)
    % Selección del tópico
    folderPath = fullfile(pwd,folder_name);
    bag = ros2bagreader(folderPath);
    bagSel = select(bag, "Topic", topic_name);
    data = readMessages(bagSel);
    % Inicialización de vectores
    num_messages = length(data);
    lat = zeros(num_messages, 1);
    lon = zeros(num_messages, 1);
    alt = zeros(num_messages, 1);
    % time = zeros(num_messages, 1);
    
    % Extracción de datos
    for i = 1:num_messages
        % gps
        lat(i, 1) = data{i}.latitude;
        lon(i, 1) = data{i}.longitude;
        alt(i, 1) = data{i}.altitude;
        % tiempo
        % format long
        % sec = data{i, 1}.header.stamp.sec;
        % nano = data{i, 1}.header.stamp.nanosec;
        % nano = single(nano)/1e9;
        % sec = double(mod(sec,1e20));
        % time(i,1) = sec + nano;
    end
    time = double(bagSel.MessageList{:,1});
    % time = time/1e9;
    % Creación del vector de posición
    out = [lat, lon, alt, time];
end
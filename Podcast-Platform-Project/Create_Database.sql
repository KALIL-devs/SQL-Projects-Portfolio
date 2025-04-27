-- TO CREATE A DATABASE.
CREATE DATABASE Podcast;

-- TO SELECT THE DATABASE.
USE Podcast;

-- TO CREATE A TABLE WITH REQUIRED COLUMNS.
CREATE TABLE hosts(
	Host_id INT PRIMARY KEY AUTO_INCREMENT,
	Name VARCHAR(100) NOT NULL,
	Bio TEXT,
	join_date DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE episodes(
	episode_id INT PRIMARY KEY AUTO_INCREMENT,
    host_id INT,
    title VARCHAR(50) NOT NULL,
    description TEXT,
    upload_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    duration_minutes INT,
    FOREIGN KEY (host_id) REFERENCES hosts(host_id)
);

CREATE TABLE listeners (
    listener_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    join_date DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE listens (
    listener_id INT,
    episode_id INT,
    listen_date DATETIME,
    PRIMARY KEY (listener_id, episode_id),
    FOREIGN KEY (listener_id) REFERENCES listeners(listener_id),
    FOREIGN KEY (episode_id) REFERENCES episodes(episode_id)
);

-- INSERT VALUES INTO TABLES

-- TABLE HOSTS
INSERT INTO hosts (name, bio, join_date) VALUES
('Alice Morgan', 'Tech enthusiast and host of CodeCast, covering programming trends.', '2023-06-12'),
('Brian Lopez', 'Film critic and host of CineTalk, discussing classic and new films.', '2023-08-20'),
('Clara Singh', 'Mindfulness coach and creator of PeacePod, promoting mental wellness.', '2024-01-10'),
('David Kim', 'Entrepreneur and host of StartUp Stories, sharing founder journeys.', '2024-03-05'),
('Elena Rossi', 'Nutritionist and host of Eat Right Radio, busting diet myths.', '2024-09-22');

-- TABLE EPISODES
INSERT INTO episodes (host_id, title, description, upload_date, duration_minutes) VALUES
(1, 'Intro to CodeCast', 'An overview of what to expect from the series.', '2023-06-13', 25),
(1, 'The Future of JavaScript', 'Deep dive into upcoming JS features in 2024.', '2023-06-20', 48),
(2, 'Top 5 Thrillers of the Decade', 'Counting down the most intense thrillers.', '2023-08-25', 36),
(2, 'The Hitchcock Effect', 'Exploring Alfred Hitchcock’s influence on cinema.', '2023-09-02', 50),
(3, 'Morning Meditation Routine', 'A 10-minute guided meditation to start your day.', '2024-01-15', 10),
(3, 'Breathing Techniques', 'Simple breathing tricks to reduce stress.', '2024-02-01', 15),
(4, 'Why Startups Fail', 'Top 5 mistakes early-stage founders make.', '2024-03-10', 45),
(5, 'Debunking Keto', 'Common myths and facts about the keto diet.', '2024-10-01', 30),
(5, 'What Nutrition Labels Don’t Tell You', 'Hidden details in packaged food.', '2024-10-10', 28);

-- TABLE LISTENERS
INSERT INTO listeners (name, join_date) VALUES
('Sanya Kapoor', '2024-01-05'),
('Ibrahim Qureshi', '2024-02-14'),
('Riya Sen', '2024-03-03'),
('Aarav Nair', '2024-03-18'),
('Meera Souza', '2024-04-01');

-- TABLE LISTENS
INSERT INTO listens (listener_id, episode_id, listen_date) VALUES
(1, 1, '2024-04-10 08:45:00'),
(1, 2, '2024-04-10 09:20:00'),
(2, 4, '2024-04-12 17:30:00'),
(2, 3, '2024-04-12 19:15:00'),
(3, 5, '2024-04-13 06:00:00'),
(3, 6, '2024-04-13 06:15:00'),
(4, 1, '2024-04-14 20:00:00'),
(4, 7, '2024-04-15 08:30:00'),
(5, 8, '2024-04-16 10:05:00'),
(5, 9, '2024-04-17 11:40:00'),
(1, 5, '2024-04-18 07:00:00'),
(2, 7, '2024-04-19 22:00:00');

-- 1. All Episodes by a Specific Host
SELECT e.title, e.upload_date
FROM episodes e
JOIN hosts h ON e.host_id = h.host_id
WHERE h.name = 'Alice Morgan'
;

-- 2. Top 3 Most Listened Episodes
SELECT e.title, COUNT(*) AS total_listens
FROM listens l
JOIN episodes e ON l.episode_id = e.episode_id
GROUP BY e.title
ORDER BY total_listens DESC
LIMIT 3
;

-- 3. Hosts Ranked by Total Episodes
SELECT h.name, COUNT(e.episode_id) AS total_episodes
FROM hosts h
LEFT JOIN episodes e ON h.host_id = e.host_id
GROUP BY h.name
ORDER BY total_episodes DESC
;

-- 4. Listener Behavior Report
SELECT l.name AS listener, e.title AS episode, h.name AS host, ls.listen_date
FROM listens ls
JOIN listeners l ON ls.listener_id = l.listener_id
JOIN episodes e ON ls.episode_id = e.episode_id
JOIN hosts h ON e.host_id = h.host_id
ORDER BY ls.listen_date DESC
;

-- 5. Recent Episodes (Last 30 Days)
SELECT title, upload_date
FROM episodes
WHERE upload_date >= CURRENT_DATE - INTERVAL 30 DAY
;

-- 6. Episode Length Category
SELECT title, 
	CASE
		WHEN duration_minutes < 15 THEN 'short'
		WHEN duration_minutes <= 30 THEN 'medium'
		ELSE 'long'
    END AS Length_category
FROM episodes
;

-- 7. Listeners Who Heard Multiple Episodes
SELECT l.name, COUNT(ls.episode_id) AS episodes_listened
FROM listeners l
JOIN listens ls ON l.listener_id = ls.listener_id
GROUP BY l.name
HAVING COUNT(ls.episode_id) >= 2
;

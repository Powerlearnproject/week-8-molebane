SELECT r.name, COUNT(s.student_id) AS dropouts, s.dropout_year
FROM Regions r
JOIN Schools sc ON r.region_id = sc.region_id
JOIN Students s ON sc.school_id = s.school_id
WHERE s.is_enrolled = FALSE
GROUP BY r.name, s.dropout_year;

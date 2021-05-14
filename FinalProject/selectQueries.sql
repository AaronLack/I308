/** Selecting all of the patients who have covid-19 and who have a covid-19 testing appointment */
SELECT CONCAT(p.firstName, ' ',p.lastName) AS fullname, p.age AS age
FROM Patient as p
JOIN PatientAppointment as ap on p.patientID = ap.patientID
JOIN Appointment as a on ap.patientID = a.appointmentID
WHERE p.conditions = 'COVID-19'
ORDER BY p.age;

/* Finds the average age of people who have covid */
SELECT p.conditions as Conditions, ROUND(AVG(age),0) AS AvgAge
FROM Patient as p
JOIN PatientAppointment as ap on p.patientID = ap.patientID
JOIN Appointment as a on ap.patientID = a.appointmentID
WHERE p.conditions = 'COVID-19'
ORDER BY p.age;

/* Selects all of the patients who have a balance that is greater than 0 */
SELECT CONCAT(p.firstName, ' ',p.lastName) AS fullname, SUM(b.balance - b.amountPaid) as AmountOwed
FROM Patient as p
JOIN Bill as b on p.patientID = b.patientID
GROUP BY p.patientID
HAVING AmountOwed > 0;

/* Subquery: Selecting all of the patients who don't have Covid-19 */
SELECT CONCAT(p.firstName, ' ', p.lastName) as Fullname, p.conditions as Conditions
FROM Patient as p
JOIN PatientAppointment AS pa on pa.patientID = p.patientID
WHERE p.patientID NOT IN
(SELECT p1.patientID
FROM Patient as p1
WHERE p1.conditions = 'COVID-19'
)
GROUP BY p.patientID;

/* Selects all the employees and shows the time they work given a shift. */
SELECT CONCAT(e.firstName, ' ', e.lastName) as Fullname, s.timeIn as timeIn, s.timeOut as timeOut, ABS(Sum(s.timeOut- s.timeIn)) as hoursWorked
From Employee as e
JOIN ShiftSchedule as s on s.empID = e.empID
WHERE e.shift = 1
GROUP BY e.empID;

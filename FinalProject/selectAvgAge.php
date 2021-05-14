<?php
$con=mysqli_connect("db.soic.indiana.edu","i308f20_team03","my+sql=i308f20_team03", "i308f20_team03");
// Check Connection
if (mysqli_connect_errno())
{echo nl2br('Failed to connect to MySQL:'. mysqli_connect_errno().'\n');}
else
{echo nl2br('Established Database Connection');}

$condition = mysqli_real_escape_string($con, $_POST['AvgAge']);

$query1 = "SELECT p.conditions as Conditions, ROUND(AVG(age),0) AS AvgAge
FROM Patient as p
JOIN PatientAppointment as ap on p.patientID = ap.patientID
JOIN Appointment as a on ap.patientID = a.appointmentID
WHERE p.conditions = '$condition'
ORDER BY p.age";

$result = mysqli_query($con,$query1);

$num_rows = mysqli_num_rows($result);

if ($num_rows > 0) {
echo "<table border = 1px> <tr><th> Conditions </th><th> AvgAge </th></tr>";

while ($row = mysqli_fetch_array($result)) {
	echo "<tr><td>".$row['Conditions']."</td><td>".$row['AvgAge']."</td></tr>";
}
echo "</table>";
} else {
	echo "0 results";
}

$con->close();
?>

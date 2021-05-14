<?php
$con=mysqli_connect("db.soic.indiana.edu","i308f20_team03","my+sql=i308f20_team03", "i308f20_team03");
// Check Connection
if (mysqli_connect_errno())
{echo nl2br('Failed to connect to MySQL:'. mysqli_connect_errno().'\n');}
else
{echo nl2br('Established Database Connection');}

$conditions = mysqli_real_escape_string($con, $_POST['conditions']);

$query1 = "SELECT CONCAT(p.firstName, ' ', p.lastName) as Fullname, p.conditions as Conditions
FROM Patient as p
JOIN PatientAppointment AS pa on pa.patientID = p.patientID
WHERE p.patientID NOT IN
(SELECT p1.patientID
FROM Patient as p1
WHERE p1.conditions = '$conditions'
)
GROUP BY p.patientID";

$result = mysqli_query($con,$query1);

$num_rows = mysqli_num_rows($result);

if ($num_rows > 0) {
echo "<table border = 1px> <tr><th> Fullname </th><th> Conditions </th></tr>";

while ($row = mysqli_fetch_array($result)) {
	echo "<tr><td>".$row['Fullname']."</td><td>".$row['Conditions']."</td></tr>";
}
echo "</table>";
} else {
	echo "0 results";
}

$con->close();
?>

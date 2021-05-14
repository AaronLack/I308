<?php
$con=mysqli_connect("db.soic.indiana.edu","i308f20_team03","my+sql=i308f20_team03", "i308f20_team03");
// Check Connection
if (mysqli_connect_errno())
{echo nl2br('Failed to connect to MySQL:'. mysqli_connect_errno().'\n');}
else
{echo nl2br('Established Database Connection');}

$shift = mysqli_real_escape_string($con, $_POST['shift']);

$query1 = "SELECT CONCAT(e.firstName, ' ', e.lastName) as Fullname, s.timeIn as timeIn, s.timeOut as timeOut, ABS(Sum(s.timeOut- s.timeIn)) as hoursWorked
From Employee as e
JOIN ShiftSchedule as s on s.empID = e.empID
WHERE e.shift = $shift
GROUP BY e.empID";

$result = mysqli_query($con,$query1);

$num_rows = mysqli_num_rows($result);

if ($num_rows > 0) {
echo "<table border = 1px> <tr><th> Fullname </th><th> timeIn </th><th> timeOut </th><th> hoursWorked </th></tr>";

while ($row = mysqli_fetch_array($result)) {
	echo "<tr><td>".$row['Fullname']."</td><td>".$row['timeIn']."</td><td>".$row['timeOut']."</td><td>".$row['hoursWorked']."</td></tr>";
}
echo "</table>";
} else {
	echo "0 results";
}

$con->close();
?>

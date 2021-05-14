<?php
$con=mysqli_connect("db.soic.indiana.edu","i308f20_team03","my+sql=i308f20_team03", "i308f20_team03");
// Check Connection
if (mysqli_connect_errno())
{echo nl2br('Failed to connect to MySQL:'. mysqli_connect_errno().'\n');}
else
{echo nl2br('Established Database Connection');}

$AmountOwed = mysqli_real_escape_string($con, $_POST['AmountOwed']);

$query1 = "SELECT CONCAT(p.firstName, ' ',p.lastName) AS Fullname, SUM(b.balance - b.amountPaid) as AmountOwed
FROM Patient as p
JOIN Bill as b on p.patientID = b.patientID
GROUP BY p.patientID
HAVING AmountOwed > 0";

$result = mysqli_query($con,$query1);

$num_rows = mysqli_num_rows($result);

if ($num_rows > 0) {
echo "<table border = 1px> <tr><th> Fullname </th><th> AmountOwed </th></tr>";

while ($row = mysqli_fetch_array($result)) {
	echo "<tr><td>".$row['Fullname']."</td><td>".$row['AmountOwed']."</td></tr>";
}
echo "</table>";
} else {
	echo "0 results";
}

$con->close();
?>

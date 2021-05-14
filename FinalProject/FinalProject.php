<!doctype html>
<html>
<body>
  <h2> <center> Final Project </center> <h2>

      <h3> Select a Patient Condition </h3>
      <form action='selectCondition.php' method='post'>
      Conditions: <select name='conditions'>
<?php
$conn = mysqli_connect('db.luddy.indiana.edu','i308f20_team03','my+sql=i308f20_team03','i308f20_team03');
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
$result = mysqli_query($conn,"SELECT distinct conditions FROM Patient order by conditions");
while ($row = mysqli_fetch_assoc($result)) {
    unset($conditions);
    $conditions = $row['conditions'];
    echo '<option value="'.$conditions.'">'.$conditions.'</option>';
}
?> </select>
    <br>
    <input type='submit' name='submit' value='Select Patient Conditions'>
    </form>

    <br>
    <br>

    <h3> Find Average Age of Patients with a Condition </h3>
    <form action='selectAvgAge.php' method='post'>
    Average Age: <select name='AvgAge'>
    <?php
    $conn = mysqli_connect('db.luddy.indiana.edu','i308f20_team03','my+sql=i308f20_team03','i308f20_team03');
    // Check connection
    if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
    }
    $result = mysqli_query($conn,"SELECT distinct conditions FROM Patient order by conditions");
    while ($row = mysqli_fetch_assoc($result)) {
    unset($conditions);
    $conditions = $row['conditions'];
    echo '<option value="'.$conditions.'">'.$conditions.'</option>';
    }
    ?> </select>
    <br>
    <input type='submit' name='submit' value='Find Average Age'>
    </form>

    <br>
    <br>

    <h3> Select Employee Shifts to see the Times and how many Hours they have Worked </h3>
    <form action='selectEmployeeShift.php' method='post'>
    Employee Shifts: <select name='shift'>
    <?php
    $conn = mysqli_connect('db.luddy.indiana.edu','i308f20_team03','my+sql=i308f20_team03','i308f20_team03');
    // Check connection
    if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
    }
    $result = mysqli_query($conn,"SELECT distinct shift FROM Employee order by shift asc");
    while ($row = mysqli_fetch_assoc($result)) {
    unset($shift);
    $shift = $row['shift'];
    echo '<option value="'.$shift.'">'.$shift.'</option>';
    }
    ?> </select>
    <br>
    <input type='submit' name='submit' value='Select Employee Shift'>
    </form>

    <h3> Subquery: Find Patients who do not have a Condition </h3>
    <form action='selectSubquery.php' method='post'>
      Conditions: <select name='conditions'>
<?php
$conn = mysqli_connect('db.luddy.indiana.edu','i308f20_team03','my+sql=i308f20_team03','i308f20_team03');
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
$result = mysqli_query($conn,"SELECT distinct conditions FROM Patient order by conditions");
while ($row = mysqli_fetch_assoc($result)) {
    unset($conditions);
    $conditions = $row['conditions'];
    echo '<option value="'.$conditions.'">'.$conditions.'</option>';
}
?> </select>
  <br>
  <input type='submit' name='submit' value='Select Subquery'>
  </form>

  <br>
  <br>

  <h3> Find How Much a Patient Owes the Hospital </h3>
  <form action='selectAmount.php' method='post'>

<br>
<input type='submit' name='submit' value='Select Amount Owed'>
</form>

<br>
<br>

</body>
</html>

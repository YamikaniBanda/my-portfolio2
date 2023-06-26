<?php
$servername="localhost";
$username="root";
$password="";
//create a connection to server
$conn=mysqli_connect($servername,$username,$password);
//checking a connection
if ($conn) {
  echo"successfull, /n";
}else {
  die("connection failed".mysqli_connect_error());
}
//database connection
$db_conn=mysqli_select_db($conn,"myportifolio");
if ($db_conn) {
  echo"connected";
} else {
  die("failed to onnect");
}
?>
<!DOCTYPE html>
<html>
<head>
  <title>PROJECTS</title>
  <script src="https://unpkg.com/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://unpkg.com/tippy.js@6.3.3/dist/tippy-bundle.umd.min.js"></script>

  <link rel="stylesheet" type="text/css" href="style.css">
  <script src="script.js"></script>
</head>
<body>
    <nav>
        <ul>
          <li><a href="index.php">Home</a></li>
          <li><a href="projects.php">Projects</a></li>
          <li><a href="skills.php">Skills</a></li>
          <li><a href="contact.php">Contact</a></li>
        </ul>
      </nav>
    <h2>SKILLS</h2>
    <div class="feat">
        <?php
        
        $sql ="SELECT * FROM myskills";

        $exec = mysqli_query($conn, $sql);

        while ($row = mysqli_fetch_array($exec)) {
          echo "<div><p>".$row['Skills']."</p><p>".$row['Tools']."</p><p>".$row['Technology']."</p></div>";
        }
        ?>
  </div>

</body>      
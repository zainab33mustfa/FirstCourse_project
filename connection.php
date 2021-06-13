<?PHP

$servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "firstcourse_project_db";

    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }


function custom_echo($x, $length = 200)
{
  if(strlen($x)<=$length)
  {
    echo $x;
  }
  else
  {
    $y=substr($x,0,$length) . '...';
    echo $y;
  }
}
?>
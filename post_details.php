

<main class="container">

  <div class="row g-5">
    <div class="col-md-12">

    <?PHP 
include("connection.php");
include("head.php");

$PostID = (isset($_GET['post_id']) && $_GET['post_id'] )? $_GET['post_id'] : 0;
$sql = "SELECT * FROM `posts` WHERE PostID = '$PostID' ";
$posts = $conn->query($sql);

$sqlComments = "SELECT * FROM `comments` WHERE PostID = '$PostID' ";
$Comments = $conn->query($sqlComments);


if(isset($_POST['doSubmit'])){

  $CommentName = $_POST['CommentName'];
  $Comment = $_POST['editor'];


  $CommentDate = date('Y-m-d H:i:s');
  $sql = "INSERT INTO `comments` (`CommentID`, `PostID`, `CommentName`, `Comment`, `CommentDate`) VALUES (NULL, '$PostID', '$CommentName', '$Comment', '$CommentDate')";
  
  if($CommentName && $Comment){
  if($conn->query($sql)){
    header("location: post_details.php?post_id=$PostID");
  }
}else{
  echo "<div class=\"alert alert-danger\">Add a name and a comment</div>";
}
}

?>

<?PHP while($post = $posts->fetch_assoc()) {?>

  <div class="card">
  <div class="card-header bg-primary text-white">
  <?=$post['PostTitle']?>

  </div>
  <div class="card-body">

  <p><?PHP echo $post['PostDetails'];?></p>
     
  </div>
  <div class="card-footer">
  <?=$post['PostDate']?><label class="float-end"><?=$post['PublisherName']?></label>
  </div>
<?PHP } ?>

  </div>

 <div class="card mt-3">
  <div class="card-header bg-light ">
  Comments
  </div>
  <div class="card-body">

<table class="table">





<?PHP while($comment = $Comments->fetch_assoc()) {?>
  <tr>
  <th><p class="bg-light text-primary"><?=$comment['CommentName']?>  <small class="float-end text-muted"><?=$comment['CommentDate']?></small></p></th>
  </tr>

<tr class="bg-note">
<td><p><?PHP echo $comment['Comment'];?></p></td>
</tr>



<?PHP } 
if($Comments->num_rows <=0){
  echo 'There is no comments';
}
?>


</table>
  </div>
 </div>
 
  <div class="card mt-3">
  <div class="card-header bg-dark text-white">
  Add new comment
  </div>
  <div class="card-body">

<form method="post">
<div class="form-group mt-2 col-md-4">
  <label>Name</label>
  <input type="text" name="CommentName" id="CommentName" class="form-control col-3" placeholder="Name" required value="<?=(isset($_POST['CommentName']))? $_POST['CommentName'] : ''?>">
</div>
<div class="form-group mt-2 mb-2">
  <label>Comment</label>
  <textarea id="editor" name="editor"></textarea>

</div>

<button type="submit" name="doSubmit" class="btn btn-primary mb-2 mt-2">Submit</button>
</form>

  </div>
    </div>

   
  </div>

</main>

<script src="js/ckeditor.js"></script>

<script>
	ClassicEditor
		.create( document.querySelector( '#editor' ), {
			// toolbar: [ 'heading', '|', 'bold', 'italic', 'link' ]
		} )
		.then( editor => {
			window.editor = editor;
		} )
		.catch( err => {
			console.error( err.stack );
		} );
</script>

<?PHP include("foot.php"); ?>


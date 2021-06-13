<?PHP 
include("connection.php");
include("head.php");

$PostDateOrder = (isset($_GET['order']) && $_GET['order'] )? $_GET['order'] : 'desc';

$year = (isset($_GET['y']) && $_GET['y'] )? " AND YEAR(PostDate) = " . $_GET['y'] : '';
$month = (isset($_GET['m']) && $_GET['m'] )? " AND MONTH(PostDate) = " . $_GET['m'] : '';
$sql = "SELECT * FROM `posts` WHERE 1 $year $month  Order BY PostDate $PostDateOrder";

$posts = $conn->query($sql);


if(isset($_POST['doSubmit'])){
 
  $PublisherName = $_POST['PublisherName'];
  $PostTitle = $_POST['PostTitle'];
  $PostDetails = $_POST['PostDetails'];

  $PostDate = date('Y-m-d H:i:s');
  $sql = "INSERT INTO `posts` (`PostID`, `PublisherName`, `PostTitle`, `PostDetails`, `PostDate`) VALUES (NULL, '$PublisherName', '$PostTitle', '$PostDetails', '$PostDate')";

    
  if($conn->query($sql)){
    header("location: index.php");
  }
}

?>
<div class="card">
  <div class="card-header bg-primary text-white">
    Posts
  </div>
  <div class="card-body">

    <div class="row g-5">
    <div class="col-md-8">

<?PHP while($post = $posts->fetch_assoc()) {?>
      <article class="blog-post">
        <h4 class="text-color3"><?=$post['PostTitle']?></h4>
        <p class="blog-post-meta"><?=$post['PostDate']?>  <small class="float-end text-muted"><?=$post['PublisherName']?></small></p>

        <p><?PHP custom_echo($post['PostDetails'])?></p>
        <a href="post_details.php?post_id=<?=$post['PostID']?>">Read More</a>
        <hr class="hr">
      </article>
<?PHP } ?>
 



      <nav class="blog-pagination mt-5" aria-label="Pagination">
        <a class="btn btn-outline-primary" href="index.php?order=asc">Older</a>
        <a class="btn btn-outline-secondary" href="index.php?order=desc" tabindex="-1" aria-disabled="true">Newer</a>
      </nav>

    </div>

    <div class="col-md-4 text-color2">
      <div class="position-sticky" style="top: 2rem;">
   

        <div class="p-4 bg-light border rounded">
          <h4 class="fst-italic">Archives</h4>
          <ol class="list-unstyled mb-0 ">
          <?PHP
          $sql_dates = "SELECT *, YEAR(`PostDate`)as 'y', MONTH(`PostDate`)as 'm' FROM `posts` WHERE 1 GROUP BY y, m";
          $dates = $conn->query($sql_dates);
          while($date = $dates->fetch_assoc()) {
            $dateObj   = DateTime::createFromFormat('!m', $date['m']);
            $monthName = $dateObj->format('F'); // March
            echo "<li><a href=\"index.php?y=".$date['y']."&m=".$date['m']."\" class=\"text-dark\">".$monthName." ".$date['y']."</a></li>";
          }
          ?>
            
    
          </ol>
        </div>

        <div class="p-4 mt-3 bg-light border rounded">
          <h4 class="fst-italic">Links</h4>
          <ol class="list-unstyled">
            <li><a href="https://github.com" target="_new" class="text-muted">GitHub</a></li>
            <li><a href="https://twitter.com" target="_new" class="text-muted">Twitter</a></li>
            <li><a href="https://facebook.com" target="_new" class="text-muted">Facebook</a></li>
          </ol>
        </div>
      </div>
    </div>
  </div>


</div>
</div>

<div class="card mt-2 mb-2">
  <div class="card-header text-white bg-dark">
  Post
  </div>
  <div class="card-body">

    <form method="post">
<div class="form-group mt-2 col-md-12">
  <label class="text-color3"><strong>Name</strong></label>
  <input type="text" name="PublisherName" id="PublisherName" class="form-control col-3" placeholder="Publisher Name" required>
</div>

<div class="form-group mt-2 col-md-12">
  <label class="text-color3"><strong>Title</strong></label>
  <input type="text" name="PostTitle" id="PostTitle" class="form-control col-3" placeholder="Title" required>
</div>

<div class="form-group mt-2 col-md-12">
  <label class="text-color3"><strong>Details</strong></label>
  <textarea id="PostDetails" name="PostDetails" ></textarea>

</div>

<button type="submit" name="doSubmit" class="btn btn-success mt-2 mb-2">Submit</button>


</form>

  </div>
</div>

<script src="js/ckeditor.js"></script>

<script>
	ClassicEditor
		.create( document.querySelector( '#PostDetails' ), {
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


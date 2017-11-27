
<?php 
session_start(); 
$handle = fopen($_POST['original_file_name'], "w"); 
$text = $_POST['detail']; 
if(fwrite($handle, $text) == FALSE){ 
  $_SESSION['error'] = '<span class="redtxt">There was an error</span>'; 
}else{ 
  $_SESSION['error'] = '<span class="redtxt">File edited successfully</span>'; 
} 
fclose($handle); 
header("Location: ".$_POST['page']); 
?>

<?php
ob_start();
	session_start();
	include_once('ketnoi.php');
	$error = NULL;
	if(isset($_POST["submit"])){
		$email=$_POST["email"];
		$mk=$_POST["mk"];
		if(isset($email) && isset($mk)){
			$sql = "SELECT * FROM thanhvien WHERE email='$email' AND mat_khau = '$mk'";
			$query = mysqli_query($conn,$sql);			
			$rows = mysqli_num_rows($query);
			if($rows>0){
				$_SESSION["email"] = $email;
				$_SESSION["mk"] = $mk;
				header('location:quantri.php');
			}
			else{
				echo'<center class="alert alert-danger">Tài khoản không tồn tại</center>';
			}
			}
		}
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf8" />
	<title>K3mart - Đăng nhập hệ thống</title>
	<link rel="stylesheet" type="text/css" href="css/dangnhap.css" />
</head>
<body>
	<?php
		if(!isset($_SESSION['email'])){

	?>
	<form method="post">
	<div id="form-login">
		<h2>đăng nhập hệ thống quản trị</h2>
		<center><span style="color:red;"><?php echo $error;?></span></center>
	    <ul>
	        <li><label>tài khoản</label><input type="text" name="email" /></li>
	        <li><label>mật khẩu</label><input type="password" name="mk" /></li>
	        <li><label>ghi nhớ</label><input type="checkbox" name="check" checked="checked" /></li>
	        <li><input type="submit" name="submit" value="Đăng nhập" /> <input type="reset" name="resset" value="Làm mới" /></li>
	    </ul>
	</div>
	</form>
	<?php
}else{
	header('location:quantri.php');
}

	?>
</body>
</html>

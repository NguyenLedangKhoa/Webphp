<link rel="stylesheet" type="text/css" href="css/danhsachtimkiem.css" />
<div class="prd-block">
<?php
    if(isset($_POST['stext'])){
        $stext = $_POST['stext'];
    }else{
        $stext = '';
    }
    $newStext = str_replace(' ', '%', $stext);
    $sql = "SELECT * FROM sanpham WHERE ten_sp LIKE '%$newStext%'";
    $query = mysqli_query($conn,$sql);
?>
	<h2>kết quả tìm được với từ khóa <span class="skeyword">"<?php echo $stext ?>"</span></h2>
    <div class="pr-list">
    <?php
        $i=0;
        while($row = mysqli_fetch_array($query)){
    ?>
    	<div class="prd-item">
        	<a href="index.php?page_layout=chitietsp&id_sp=<?php echo $row['id_sp'] ?>"><img width="140" height="150" src="quantri/anh/<?php echo $row['anh_sp'] ?>" /></a>
            <h3><a href="index.php?page_layout=chitietsp&id_sp=<?php echo $row['id_sp'] ?>"><?php echo $row['ten_sp'] ?></a></h3>
            <p>Bảo hành: <?php echo $row['bao_hanh'] ?></p>
            <p>Tình trạng: <?php echo $row['tinh_trang'] ?></p>
            <p class="price"><span>Giá: <?php echo $row['gia_sp'] ?> VNĐ</span></p></p>
        </div>
    <?php
        $i++;
        if($i%3==0){
            echo ' <div class="clear"></div>';
        }
        }
    ?>
       
    </div>
</div>


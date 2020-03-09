

<?php
$exif = exif_read_data( '2020-03-07-02:58:53-IMG_0406.JPG' );
echo '<pre>';print_r($exif);



$image = imagecreatefromjpeg('2020-03-07-02:58:53-IMG_0406.JPG');
$exif = exif_read_data('2020-03-07-02:58:53-IMG_0406.JPG');
if(!empty($exif['Orientation'])) {
    switch($exif['Orientation']) {
        case 8:
            $image = imagerotate($image,90,0);
            break;
        case 3:
            $image = imagerotate($image,180,0);
            break;
        case 6:
            $image = imagerotate($image,-90,0);
            break;
    }
}
imagejpeg($image, "myUpdateImage.jpeg");

echo "<img src='myUpdateImage.jpeg'>";

    



?>


<!DOCTYPE html>
<html lang="en">

<head>
    <title>HSH</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="robots" content="noindex">
    <script type="text/javascript" src="<?php echo base_url();?>site_assets/js/jquery.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url();?>site_assets/js/bootstrap.min.js"></script>
    <link rel="icon" href="<?php echo base_url();?>site_assets/images/favicon.png" type="image/gif" sizes="16x16">
    <link rel="stylesheet" href="<?php echo base_url();?>site_assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
    <link id="effect" rel="stylesheet" type="text/css" media="all" href="<?php echo base_url();?>site_assets/webslidemenu/fade-down.css" />
    <link rel="stylesheet" type="text/css" media="all" href="<?php echo base_url();?>site_assets/webslidemenu/webslidemenu.css" />
    <link id="theme" rel="stylesheet" type="text/css" media="all" href="webslidemenu/color-skins/white-red.css" />
    <script type="text/javascript" src="<?php echo base_url();?>site_assets/webslidemenu/webslidemenu.js"></script>
    <link rel="stylesheet" href="<?php echo base_url();?>site_assets/webslidemenu/demo.css" />
    <link rel="stylesheet" href="<?php echo base_url();?>site_assets/css/style.css">





    <script type="text/javascript" src="<?php echo base_url();?>site_assets/js/main.js"></script>
    <script src="<?php echo base_url();?>site_assets/js/lightbox.min.js"></script>
    <link rel="stylesheet" href="<?php echo base_url();?>site_assets/css/lightbox.min.css">
</head>

<body>
    <!-- header -->
    <?php include 'header.php' ?>
    <!-- header -->
    <!-- bread crumb start here -->
    <section class="breadcrumb-sec overlay">
        <div class="container">
            <div class="row">
                <div class="col-12 text-center">
                    <h2 class="pag-ttl">Gallery</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="index.html">Home</a>
                        </li>
                        <li>Gallery</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>
    <!-- bread crumb end here -->
    <!-- gallery section start here -->
    <div id="gallery_sec">
        <div class="container">
            <div class="row">
            <?php 
                if(!empty($gallery)){
                    for($i=0;$i<count($gallery);$i++){
            ?>
                <div class="col-md-3 evnts">
                    <div class="portfolio-item">
                        <img src="<?php echo base_url('file_uploads/gallery/'.$gallery[$i]->g_image);?>" alt="Surprise Party Planners">
                        <a class="popup portfolio-img" href="<?php echo base_url('file_uploads/gallery/'.$gallery[$i]->g_image);?>" data-lightbox="example-set"
                            data-gall="myGallery"><i class="fa fa-arrows-alt"></i></a>
                    </div>
                </div>
                <?php } } ?>
            </div>
        </div>
    </div>

    <!-- footer -->
    <?php include 'footer.php' ?>
    <!-- footer -->
</body>

</html>
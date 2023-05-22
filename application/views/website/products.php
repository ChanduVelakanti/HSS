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
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
    <link rel="stylesheet" type="text/css"
        href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />


    <script type="text/javascript" src="<?php echo base_url();?>site_assets/js/main.js"></script>
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
                    <h2 class="pag-ttl">Products</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="index.html">Home</a>
                        </li>
                        <li>Products</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>
    <!-- bread crumb end here -->
    <!-- product section start here -->
    <div id="products-main">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="left-mnusec sticky">
                        <h3>Our Categories</h3>
                        <div class="sub-categories">
                            <ul>
                            <?php 
                                        if(!empty($categories)){
                                            for($i=0;$i<count($categories);$i++){
                                    ?>
                                    <li <?php if($this->uri->segment(2)==$categories[$i]->c_id || $this->uri->segment(2)==$categories[$i]->c_id.".php"){?> class="actv"; <?php } ?>><a href="<?php echo site_url('products/'.$categories[$i]->c_id)?>"><?php echo $categories[$i]->c_name;?></a></li>
                                    <?php } } ?>
                            </ul>
                        </div>

                    </div>
                </div>
                <div class="col-md-9">
                    <div class="product-sec">
                        <div class="row">
                            <?php 
                                if(!empty($products)){
                                    foreach($products as $row){
                            ?>
                            <div class="col-md-3">
                                <div class="categry">
                                    <a href="<?php echo base_url('pre-order')?>">
                                        <img src="<?php echo base_url('file_uploads/products/'.$row->p_image);?>" alt="">
                                        <div class="cat-cont">
                                            <h2><?php echo $row->p_name?></h2>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <?php } } ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- product section end here -->


    <!-- footer -->
    <?php include 'footer.php' ?>
    <!-- footer -->



</body>

</html>
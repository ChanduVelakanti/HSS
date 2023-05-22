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
    <!--<script type="text/javascript" src="<?php echo base_url();?>site_assets/js/main.js"></script>-->
</head>

<body>
    <!-- header -->   
    <?php include 'header.php' ?>
    <!-- header -->
    <!-- slider menu start here -->
    <div id="demo" class="carousel slide" data-ride="carousel">
        <ul class="carousel-indicators">
            <li data-target="#demo" data-slide-to="0" class="active"></li>
            <li data-target="#demo" data-slide-to="1"></li>
            <li data-target="#demo" data-slide-to="2"></li>
            <li data-target="#demo" data-slide-to="3"></li>
            <li data-target="#demo" data-slide-to="4"></li>
        </ul>
        <div class="carousel-inner slider-sec">
            <div class="carousel-item active">
                <img src="<?php echo base_url();?>site_assets/images/sliders/s1.jpg" alt="">
                <!-- <div class="carousel-caption">
                    <h3>Los Angeles</h3>
                    <p>We had such a great time in LA!</p>
                </div> -->
            </div>
            <div class="carousel-item">
                <img src="<?php echo base_url();?>site_assets/images/sliders/s2.jpg" alt="">
                <!-- <div class="carousel-caption">
                    <h3>Chicago</h3>
                    <p>Thank you, Chicago!</p>
                </div> -->
            </div>
            <div class="carousel-item">
                <img src="<?php echo base_url();?>site_assets/images/sliders/s3.jpg" alt="">
                <!-- <div class="carousel-caption">
                    <h3>New York</h3>
                    <p>We love the Big Apple!</p>
                </div> -->
            </div>
             <div class="carousel-item">
                <img src="<?php echo base_url();?>site_assets/images/sliders/s4.jpg" alt="">
                <!-- <div class="carousel-caption">
                    <h3>New York</h3>
                    <p>We love the Big Apple!</p>
                </div> -->
            </div>
             <div class="carousel-item">
                <img src="<?php echo base_url();?>site_assets/images/sliders/s5.jpg" alt="New York">
                <!-- <div class="carousel-caption">
                    <h3>New York</h3>
                    <p>We love the Big Apple!</p>
                </div> -->
            </div>
        </div>
        <a class="carousel-control-prev" href="#demo" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#demo" data-slide="next">
            <span class="carousel-control-next-icon"></span>
        </a>
    </div>
    <!-- slider menu  end here -->




    <!-- categories section start here -->
    <div class="categories">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="ttl-sec">
                        <h3>OUR CATEGORIES</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="category-slide">
                    <?php 
                        if(isset($categories)){
                            $sno = 0;
                            foreach($categories as $row){
                    ?>
                        <div class="categry">
                            <a href="<?php echo site_url('products/'.$row->c_id)?>">
                                <img src="<?php echo base_url('file_uploads/categories/'.$row->c_image);?>" alt="">
                                <div class="cat-cont">
                                    <h2><?php echo $row->c_name;?></h2>
                                </div>
                            </a>
                        </div>
                        <?php } } ?>

                      

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- categoreies section end here -->
    <!-- section start here -->
    <div class="best-sweet bg-sec">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="ttl-sec">
                        <h3 class="color-white">SWEET PRODUCTS</h3>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="row">
                                <div class="col-md-6 pr-1">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="multi-swts">
                                                <div class="box">
                                                    <img src="<?php echo base_url();?>site_assets/images/best/1.jpg">
                                                    <div class="box-content">
                                                        <h3 class="title">Agra Petha Sweet</h3>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="multi-swts">
                                                <div class="box">
                                                    <img src="<?php echo base_url();?>site_assets/images/best/2.jpg">
                                                    <div class="box-content">
                                                        <h3 class="title">Pyramid Baklava</h3>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 pl-1 pr-1">
                                    <div class="multi-swts">
                                        <div class="box">
                                            <img src="<?php echo base_url();?>site_assets/images/best/5.jpg">
                                            <div class="box-content">
                                                <h3 class="title">Gift Hampers</h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 pl-1">
                            <div class="row">
                                <div class="col-md-6 pr-1">
                                    <div class="multi-swts">
                                        <div class="box">
                                            <img src="<?php echo base_url();?>site_assets/images/best/3.jpg">
                                            <div class="box-content">
                                                <h3 class="title">Dry Fruits Kaju Sweets</h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 pl-1">
                                    <div class="multi-swts">
                                        <div class="box">
                                            <img src="<?php echo base_url();?>site_assets/images/best/4.jpg">
                                            <div class="box-content">
                                                <h3 class="title">Kiwi Bengali</h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="multi-swts">
                                        <div class="box">
                                            <img src="<?php echo base_url();?>site_assets/images/best/6.jpg">
                                            <div class="box-content">
                                                <h3 class="title">Dry Fruits Sweets</h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- section end here -->

    <!-- categories section start here -->
    <div class="categories">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="ttl-sec">
                        <h3>SWEET ITEMS</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="category-slide">
                        <div class="categry">
                                <img src="<?php echo base_url();?>site_assets/images/categories/1.jpg" alt="">
                                <div class="cat-cont">
                                    <h2>Agra Petha Sweets</h2>
                                </div>
                        </div>
                        <div class="categry">
                                <img src="<?php echo base_url();?>site_assets/images/categories/2.jpg" alt="">
                                <div class="cat-cont">
                                    <h2>Pyramid Baklava</h2>
                                </div>
                        </div>
                        <div class="categry">
                                <img src="<?php echo base_url();?>site_assets/images/categories/3.jpg" alt="">
                                <div class="cat-cont">
                                    <h2>Cham Cham</h2>
                                </div>
                        </div>
                        <div class="categry">
                                <img src="<?php echo base_url();?>site_assets/images/categories/4.jpg" alt="">
                                <div class="cat-cont">
                                    <h2>Dry Fruits Kaju</h2>
                                </div>
                        </div>
                        <div class="categry">
                                <img src="<?php echo base_url();?>site_assets/images/categories/5.jpg" alt="">
                                <div class="cat-cont">
                                    <h2>Kova Sandwich</h2>
                                </div>
                        </div>
                        <div class="categry">
                            <img src="<?php echo base_url();?>site_assets/images/categories/6.jpg" alt="">
                                <div class="cat-cont">
                                    <h2>Anjeer Khalakhand</h2>
                                </div>
                        </div>
                        <div class="categry">
                                <img src="<?php echo base_url();?>site_assets/images/categories/7.jpg" alt="">
                                <div class="cat-cont">
                                    <h2>Mothichur Ladoo</h2>
                                </div>
                        </div>
                        <div class="categry">
                                <img src="<?php echo base_url();?>site_assets/images/categories/8.jpg" alt="">
                                <div class="cat-cont">
                                    <h2>Suryakala Sweet</h2>
                                </div>
                        </div>
                        <div class="categry">
                                <img src="<?php echo base_url();?>site_assets/images/categories/9.jpg" alt="">
                                <div class="cat-cont">
                                    <h2>Badusha</h2>
                                </div>
                        </div>
                        <div class="categry">
                                <img src="<?php echo base_url();?>site_assets/images/categories/10.jpg" alt="">
                                <div class="cat-cont">
                                    <h2>Dry Fruits Ladoo</h2>
                                </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- categoreies section end here -->

    <!-- section start here -->
    <div class="best-sweet bg-sec1">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="ttl-sec">
                        <h3>NAMKEEN PRODUCTS</h3>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="row">
                                <div class="col-md-6 pr-1">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="multi-swts">
                                                <div class="box">
                                                    <img src="<?php echo base_url();?>site_assets/images/best/n1.jpg">
                                                    <div class="box-content">
                                                        <h3 class="title">Palak Pakodi</h3>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="multi-swts">
                                                <div class="box">
                                                    <img src="<?php echo base_url();?>site_assets/images/best/n2.jpg">
                                                    <div class="box-content">
                                                        <h3 class="title">Khara Mixture</h3>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 pl-1 pr-1">
                                    <div class="multi-swts">
                                        <div class="box">
                                            <img src="<?php echo base_url();?>site_assets/images/best/n10.jpg">
                                            <div class="box-content">
                                                <h3 class="title">Bhakarwadi and Dry-fruit</h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 pl-1">
                            <div class="row">
                                <div class="col-md-6 pr-1">
                                    <div class="multi-swts">
                                        <div class="box">
                                            <img src="<?php echo base_url();?>site_assets/images/best/n3.jpg">
                                            <div class="box-content">
                                                <h3 class="title">Chekodi</h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 pl-1">
                                    <div class="multi-swts">
                                        <div class="box">
                                            <img src="<?php echo base_url();?>site_assets/images/best/n7.jpg">
                                            <div class="box-content">
                                                <h3 class="title">Babber</h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="multi-swts">
                                        <div class="box">
                                            <img src="<?php echo base_url();?>site_assets/images/best/n9.jpg">
                                            <div class="box-content">
                                                <h3 class="title">Chuduva & Dalmoth</h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- section end here -->
    <!-- categories section start here -->
    <div class="categories">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="ttl-sec">
                        <h3>NAMKEEN ITEMS</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="category-slide">
                        <div class="categry">
                                <img src="<?php echo base_url();?>site_assets/images/namkeens/n1.jpg" alt="">
                                <div class="cat-cont">
                                    <h2>Babber</h2>
                                </div>
                        </div>
                        <div class="categry">
                                <img src="<?php echo base_url();?>site_assets/images/namkeens/n2.jpg" alt="">
                                <div class="cat-cont">
                                    <h2>Bhakarwadi</h2>
                                </div>
                        </div>
                        <div class="categry">
                                <img src="<?php echo base_url();?>site_assets/images/namkeens/n3.jpg" alt="">
                                <div class="cat-cont">
                                    <h2>Boondi</h2>
                                </div>
                        </div>
                        <div class="categry">
                                <img src="<?php echo base_url();?>site_assets/images/namkeens/n4.jpg" alt="">
                                <div class="cat-cont">
                                    <h2>Chekodi</h2>
                                </div>
                        </div>
                        <div class="categry">
                                <img src="<?php echo base_url();?>site_assets/images/namkeens/n5.jpg" alt="">
                                <div class="cat-cont">
                                    <h2>Chuduva</h2>
                                </div>
                        </div>
                        <div class="categry">
                                <img src="<?php echo base_url();?>site_assets/images/namkeens/n6.jpg" alt="">
                                <div class="cat-cont">
                                    <h2>Dalmoth</h2>
                                </div>
                        </div>
                        <!--<div class="categry">-->
                        <!--        <img src="<?php echo base_url();?>site_assets/images/namkeens/n7.jpg" alt="">-->
                        <!--        <div class="cat-cont">-->
                        <!--            <h2>Dryfruit Mixture</h2>-->
                        <!--        </div>-->
                        <!--</div>-->
                        <div class="categry">
                                <img src="<?php echo base_url();?>site_assets/images/namkeens/n8.jpg" alt="">
                                <div class="cat-cont">
                                    <h2>Dryfruit Mixture</h2>
                                </div>
                        </div>
                        <div class="categry">
                                <img src="<?php echo base_url();?>site_assets/images/namkeens/n9.jpg" alt="">
                                <div class="cat-cont">
                                    <h2>Kabuli Chana</h2>
                                </div>
                        </div>
                        <div class="categry">
                                <img src="<?php echo base_url();?>site_assets/images/namkeens/n10.jpg" alt="">
                                <div class="cat-cont">
                                    <h2>Khara Mixture</h2>
                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- categoreies section end here -->

    <!-- footer -->
    <?php include 'footer.php' ?>
    <!-- footer -->

    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>


    <script>
        $('.category-slide').slick({
            dots: false,
            infinite: true,
            slidesToShow: 6,
            slidesToScroll: 1,
            arrows: true,
            autoplay: true,
            autoplaySpeed: 2000,
            responsive: [{
                breakpoint: 1024,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1,
                    infinite: true,
                    dots: false
                }
            },
            {
                breakpoint: 600,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1
                }
            },
            {
                breakpoint: 480,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1
                }
            }
            ]
        });
    </script>

</body>

</html>
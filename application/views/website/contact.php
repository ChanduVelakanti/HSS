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

    <style>
        .form-group input {
            width: 100%;
            padding: 8px 5px;
            border: 1px solid #ccc;
            outline: none;
        }

        .form-group textarea {
            width: 100%;
            padding: 8px 5px;
            height: 150px;
            border: 1px solid #ccc;
            outline: none;
        }

        .cnt-btn {
            text-align: center;
        }

        .cnt-btn button {
            height: 35px;
            font-size: 17px;
            width: 100%;
            max-width: 200px;
            color: #fff;
            background-image: linear-gradient(to right, #f7941d, #b22234);
            border: none;
        }

        .cnt-btn button:hover {
            background-image: linear-gradient(to right, #b22234, #f7941d);
        }
    </style>
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
                    <h2 class="pag-ttl">Contact Us</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="index.html">Home</a>
                        </li>
                        <li>Contact Us</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>
    <!-- bread crumb end here -->
    <section id="contact-sec" class="contact">
        <div class="container">
            <div class="row mt-5">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="info-box">
                                <i class="fa fa-phone"></i>
                                <h3>Call Us</h3>
                                <p>0870 257 7571 <br> +91 7702677068</p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="info-box">
                                <i class="fa fa-envelope"></i>
                                <h3>Email Us</h3>
                                <p> heeralalsweethouse@gmail.com</p>
                                <p></p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="info-box">
                                <i class="fa fa-map"></i>
                                <h3>Our Address</h3>
                                <p>Warangal-Huzurabad Rd, Lashkar Bazar, Kishanpura, Hanamkonda, Telangana 506001</p>
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-md-12">
                    <div class="row mt-5">
                        <div class="col-lg-7">
                            <?php 
            if($this->session->flashdata('message')){
          ?>
          <h6 style="color:green;"><?php echo $this->session->flashdata('message');?></h6>
          <?php } ?>
          <?php 
            if($this->session->flashdata('error')){
          ?>
          <h6 style="color:red;"><?php echo $this->session->flashdata('error');?></h6>
          <?php } ?>
                            <form action="<?php echo base_url();?>Website_Controller/save_contact" method="post" role="form">
                                <div class="col form-group">
                                    <input class="from-control" pattern="^[A-Za-z -]+$"
                                        title="Input Allows Alphabets and Spaces" type="text" id="name" name="contact_name"
                                        placeholder="Name" required="">
                                </div>
                                <div class="col form-group">
                                    <input type="text" class="from-control" id="mobile" maxlength="10" name="contact_mobile"
                                        pattern="[6789][0-9]{9}" title="Input allows exactly 10 numbers"
                                        placeholder="Mobile" required="">
                                </div>
                                <div class="col form-group mt-3">
                                    <input class="from-control" type="email" id="email" name="contact_email"
                                        placeholder="E-Mail" required="">
                                </div>
                                <div class="col form-group mt-3">
                                    <textarea class="from-control" id="message" name="contact_message"
                                        placeholder="Your message Here" required=""></textarea>
                                </div>
                                <div class="cnt-btn"><button type="submit">Submit</button></div>

                            </form>
                        </div>
                        <div class="col-lg-5">
                            <iframe
                                src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15177.29732892097!2d79.5606656!3d18.0101457!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xe585072cfe5d7d25!2sHeeralal%20Sweet%20House!5e0!3m2!1sen!2sin!4v1651486573670!5m2!1sen!2sin"
                                width="100%" height="320" style="border:0;" allowfullscreen="" loading="lazy"
                                referrerpolicy="no-referrer-when-downgrade"></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <!-- footer -->
    <?php include 'footer.php' ?>
    <!-- footer -->



</body>

</html>
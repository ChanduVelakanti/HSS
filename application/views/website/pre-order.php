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
                    <h2 class="pag-ttl">Pre Order</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="index.html">Home</a>
                        </li>
                        <li>Pre Order</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>
    <!-- bread crumb end here -->
    <div class="pre-order">
        <div class="container-fluid">
            <div class="row justify-content-center align-items-center">
                <div class="col-md-5 p-0">
                    <div class="enqury-img">
                        <img src="<?php echo base_url();?>site_assets/images/enquiry.jpg" alt="">
                    </div>
                </div>
                <div class="col-md-7">
                    <div class="hdr-ttl">
                        <h2>GET ENQUIRY</h2><br>
                    </div>
                    <div class="gettouch">
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
                        <form action="<?php echo base_url();?>Website_Controller/save_Pre_order" method="post" role="form">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input class="from-control form-sec" pattern="^[A-Za-z -]+$"
                                            title="Input Allows Alphabets and Spaces" type="text" id="name" name="pre_name"
                                            placeholder="Name" required="">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input type="text" class="from-control form-sec" id="mobile" maxlength="10"
                                            name="pre_mobile" pattern="[6789][0-9]{9}"
                                            title="Input allows exactly 10 numbers" placeholder="Mobile" required="">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input class="from-control form-sec" type="email" id="email" name="pre_email"
                                            placeholder="E-Mail" required="">
                                    </div>
                                </div>
                            </div>
                           
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <textarea class="from-control form-sec" id="message" name="pre_message"
                                            placeholder="Enter Product Names" required=""></textarea>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="enq-sbmtbtn">
                                        <button name="submit" type="submit" value="Submit"
                                            class="site-button"><span>Submit</span></button>
                                    </div>
                                </div>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>



    <!-- footer -->
    <?php include 'footer.php' ?>
    <!-- footer -->



</body>

</html>
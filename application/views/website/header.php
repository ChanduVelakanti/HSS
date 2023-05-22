
<!-- top header section start here -->
<div class="topmenu">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="top-left">
                    <span><i class="fa fa-phone"></i> +91 7702677068</span> &nbsp;
                    <span><i class="fa fa-envelope"></i> heeralalsweethouse@gmail.com</span>
                </div>
            </div>
            <div class="col-md-6">
                <div class="top-right">
                    <span><a href="https://www.facebook.com/HeeralalSweetsHouse" target=_blank><i class="fab fa-facebook"></i></a></span> &nbsp;
                    <span><a href="https://www.instagram.com/heeralal_sweet_house/?igshid=YmMyMTA2M2Y=" target=_blank><i class="fab fa-instagram"></i></a></span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- top header section end here -->
<!-- Mobile Header -->
<div class="wsmobileheader clearfix ">
    <a id="wsnavtoggle" class="wsanimated-arrow"><span></span></a>
    <a href="<?php echo base_url('index')?>">
    <span class="smllogo"><img src="<?php echo base_url();?>site_assets/images/logo.png" width="80" alt="" /></span></a>
    <a href="tel:7702677068" class="callusbtn"><i class="fas fa-phone"></i></a>
</div>
<!-- Mobile Header -->
<div class="wsmainfull clearfix">
    <div class="wsmainwp clearfix">
        <!--Main Menu HTML Code-->
        <nav class="wsmenu clearfix">
            <ul class="wsmenu-list" id="menu-sec">
                <li aria-haspopup="true" <?php if($this->uri->segment(1)=="index" || $this->uri->segment(1)=="" ){ ?> class="active" <?php } ?> id="home"><a href="<?php echo base_url('index')?>" class="wshomeico">
                        Home</a></li>
                <li aria-haspopup="true"  <?php if($this->uri->segment(1)=="about"){ ?> class="active" <?php } ?> id="about"><a href="<?php echo base_url('about')?>"
                        class="wshomeico"> About Us</a></li>
                        
                <li aria-haspopup="true" <?php if(!empty($this->uri->segment(2))){?> class="active" <?php } ?>><a href="#"> Products <span class="wsarrow"></span></a>
                    <div class="wsmegamenu clearfix halfmenu">
                        <div class="container-fluid">
                            <div class="row">

                                <ul class="col-md-12 col-xs-12 link-list pro-menu">
                                    <!-- <li class="title">Products</li> -->
                                    <?php 
                                        if(!empty($categories)){
                                            for($i=0;$i<count($categories);$i++){
                                    ?>
                                    <li><a href="<?php echo site_url('products/'.$categories[$i]->c_id)?>"><i class="fas fa-angle-right"></i><?php echo $categories[$i]->c_name;?></a></li>
                                    <?php } } ?>
                                    
                                </ul>
                            </div>
                        </div>
                    </div>
                </li>
               
                <li aria-haspopup="true" class="wscenterlogo logo-drsk">
                    <a href="<?php echo base_url('index')?>" class="logo-sec">
                        <img class="logo-img" src="<?php echo base_url();?>site_assets/images/logo.png" alt="">
                        </a>
                </li>

                <li aria-haspopup="true"  <?php if($this->uri->segment(1)=="pre-order"){ ?> class="active" <?php } ?> id="pre-order"><a href="<?php echo base_url('pre-order')?>"
                        class="wshomeico">
                        Pre-Orders</a></li>
                <li aria-haspopup="true"  <?php if($this->uri->segment(1)=="gallery"){ ?> class="active" <?php } ?> id="gallery"><a href="<?php echo base_url('gallery')?>"
                        class="wshomeico">
                        Gallery</a></li>
                <li aria-haspopup="true"  <?php if($this->uri->segment(1)=="contact"){ ?> class="active" <?php } ?> id="contact"><a href="<?php echo base_url('contact')?>"
                        class="wshomeico">
                        Contact Us</a></li>
            </ul>
        </nav>
        <!--Menu HTML Code-->
    </div>
</div>
<!-- menu section end here -->
<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>-->

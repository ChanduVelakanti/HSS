
    <!-- header -->
    <?php include 'header.php' ?>
    <!-- header -->

        <div id="page-wrapper">
            <div class="header">
                <h1 class="page-header">
                    Add Products
                </h1>
                <ol class="breadcrumb">
                    <li><a href="index.html">Home</a></li>
                    <li><a href="#">Add Gallery</a></li>
                    <!-- <li class="active">Data</li> -->
                </ol>

            </div>

            <div id="page-inner">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-action"></div>
                            <div class="card-content">
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
                                
                                <form class="col s12"  method="post" action="<?php echo base_url('Admin_Controller/save_gallery');?>" enctype="multipart/form-data">
                                    <div class="row">                                       
                                       
                                        <div class="input-field col s12">
                                            <p>Gallery Image File *</p>
                                            <input id="last_name" name="g_image" type="file" class="validate" required>
                                           
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="input-field col s12">
                                            <button type="submit" class="btn">SUBMIT</button>
                                        </div>
                                    </div>

                                </form>
                                <div class="clearBoth"></div>
                            </div>
                        </div>
                    </div>
                </div>

                <footer>
                    <p> Designed by: <a href="">SVAPPS</a></p>
                </footer>
            </div>
        </div>
    </div>
    <script src="<?php echo base_url();?>admin_assets/js/jquery-1.10.2.js"></script>
    <script src="<?php echo base_url();?>admin_assets/js/bootstrap.min.js"></script>
    <script src="<?php echo base_url();?>admin_assets/js/materialize.min.js"></script>
    <script src="<?php echo base_url();?>admin_assets/js/jquery.metisMenu.js"></script>
    <script src="<?php echo base_url();?>admin_assets/js/custom-scripts.js"></script>
</body>

</html>
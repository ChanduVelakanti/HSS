 <!-- header -->
 <?php include 'header.php' ?>
    <!-- header -->


        <div id="page-wrapper">
            <div class="header">
                <h1 class="page-header">
                    Change Password
                </h1>
                <ol class="breadcrumb">
                    <li><a href="index.html">Home</a></li>
                    <li><a href="#">Change Password</a></li>
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
                                <form class="col s12" method="post" action="<?php echo base_url('Admin_Controller/update_password');?>"> 

                                    <div class="row">
                                        <div class="input-field col s12">
                                            <input id="password" name="a_old_password" type="password" class="validate">
                                            <h6 style="color:red;"><?php echo form_error('a_old_password');?></h6>
                                            <label for="password">Old Password</label>
                                        </div>
                                        <div class="input-field col s12">
                                            <input id="password" name="a_new_password" type="password" class="validate">
                                            <h6 style="color:red;"><?php echo form_error('a_new_password');?></h6>
                                            <label for="password">New Password</label>
                                        </div>
                                        <div class="input-field col s12">
                                            <input id="password" name="a_confirm_password" type="password" class="validate">
                                            <h6 style="color:red;"><?php echo form_error('a_confirm_password');?></h6>
                                            <label for="password">Confirm Password</label>
                                        </div>
                                        <div class="row">
                                            <div class="input-field col s12">
                                                <button type="submit" class="btn">SUBMIT</button>
                                            </div>
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
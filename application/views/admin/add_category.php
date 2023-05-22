<?php 
    if(empty($edit)){
        $required_status = "required";
    }else{
        $required_status = "";
    }
?>
    <!-- header -->
    <?php include 'header.php' ?>
    <!-- header -->

        <div id="page-wrapper">
            <div class="header">
                <h1 class="page-header">
                    Add Category
                </h1>
                <ol class="breadcrumb">
                    <li><a href="index.html">Home</a></li>
                    <li><a href="#">Add Category</a></li>
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
                                <form class="col s12" method="post" action="<?php if(empty($edit)) { echo base_url('Admin_Controller/save_category'); }else{ echo base_url('Admin_Controller/save_category/'.$this->uri->segment(3)); }?>" enctype="multipart/form-data">
                                    <div class="row">
                                       
                                        <div class="input-field col s6">
                                        <p>Category Name *</p>
                                            <input id="last_name" value="<?php if(empty($edit)){ echo ""; }else{ echo $edit[0]->c_name; }?>" name="c_name" type="text" class="validate" required>
                                            
                                        </div>
                                        <div class="input-field col s6">
                                        <p>Category Image File *</p>
                                            <input id="last_name" name="c_image" type="file" class="validate" <?php echo $required_status;?>>
                                            <?php 
                                                if(empty($edit)){ echo ""; }
                                                else{
                                                    ?>
                                                    <br>
                                                    <img src="<?php echo base_url('file_uploads/categories/'.$edit[0]->c_image);?>" width="100px" height="100px">
                                                    <?php
                                                }
                                            ?>
                                            
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="input-field col s12">
                                            <button class="btn">SUBMIT</button>
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
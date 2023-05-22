 <!-- header -->
 <?php include 'header.php' ?>
    <!-- header -->
        <div id="page-wrapper">
            <div class="header">
                <h1 class="page-header">
                    Gallery 
                    <span class="btn">
                        <a href="<?php echo base_url('admin/add_gallery')?>">ADD +</a>
                    </span> 
                </h1>
                <ol class="breadcrumb">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Gallery</a></li>
                </ol>

            </div>

            <div id="page-inner">
                <div class="card">
                    <div class="card-action">

                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <table id="example" class="table table-striped table-bordered" style="width:100%">
                                <thead>
                                    <tr>
                                        <th>S.No</th>
                                        <th>Image</th>
                                        <!--<th>Edit</th>-->
                                        <th>Delete</th>
                                    </tr>
                                </thead>
                                <tbody>

                                <?php 
                                    if(!empty($gallery)){
                                        $sno = 0;
                                        foreach($gallery as $row){
                                ?>
                                    <tr>
                                        <td><?php echo ++$sno;?></td>
                                        <td> <?php if(!empty($row->g_image)){?> <img width="100px" height="100px" src="<?php echo base_url('file_uploads/gallery/'.$row->g_image);?>" alt=""> <?php }else{ ?> <img src="<?php echo base_url('file_uploads/temp_files/temp_image.jpg');?>" width="100px" height="100px"><?php } ?> </td>
                                        <!--<td><a href=""><i class="fa fa-pencil"></i></a></td>-->
                                        <td><a href="<?php echo base_url('Website_Controller/deleteRecord/gallery/'.$row->g_id);?>" onclick="return confirm('Are you sure?');"><i class="fa fa-trash-o" aria-hidden="true"></i></a></td>
                                    </tr>
                                    <?php } } ?>
                                    

                            </table>
                        </div>
                    </div>
                </div>
                <!-- footer -->
                <footer>
                    <p> Designed by: <a href="">SVAPPS</a></p>
                </footer>
                <!-- footer -->
            </div>
        </div>
    </div>
    <script src="<?php echo base_url();?>admin_assets/js/jquery-1.10.2.js"></script>
    <script src="<?php echo base_url();?>admin_assets/js/bootstrap.min.js"></script>
    <script src="<?php echo base_url();?>admin_assets/js/materialize.min.js"></script>
    <script src="<?php echo base_url();?>admin_assets/js/jquery.metisMenu.js"></script>
    <!-- DATA TABLE SCRIPTS -->
    <script src="<?php echo base_url();?>admin_assets/js/jquery.dataTables.min.js"></script>
    <script src="<?php echo base_url();?>admin_assets/js/dataTables.bootstrap4.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#example').DataTable();
        });
    </script>
    <script src="assets/js/custom-scripts.js"></script>
</body>

</html>
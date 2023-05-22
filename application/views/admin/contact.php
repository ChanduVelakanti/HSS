 <!-- header -->
 <?php include 'header.php' ?>
    <!-- header -->
    
        <div id="page-wrapper">
            <div class="header">
                <h1 class="page-header">
                    Contact Us List
                </h1>
                <ol class="breadcrumb">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Products</a></li>
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
                                        <th>Name</th>
                                        <th>Mobile Number</th>
                                        <th>Email</th>
                                        <th>Message</th>
                                        <th>Delete</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php 
                                    if(!empty($contact)){
                                        $sno = 0;
                                        foreach($contact as $row){
                                ?>
                                    <tr>
                                        <td><?php echo ++$sno;?></td>
                                        <td><?php echo $row->contact_name;?></td>
                                        <td> <?php echo $row->contact_mobile;?> </td>
                                        <td><?php echo $row->contact_email;?></td>
                                        <td><?php echo $row->contact_message;?></td>
                                        <td><a href="<?php echo base_url('Website_Controller/deleteRecord/contact/'.$row->contact_id);?>" onclick="return confirm('Are you sure?');"><i class="fa fa-trash-o"></i></a></td>
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
    <script src="<?php echo base_url();?>admin_assets/js/custom-scripts.js"></script>
</body>

</html>
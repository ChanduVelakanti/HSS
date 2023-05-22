 <!-- header -->
 <?php include 'header.php' ?>
    <!-- header -->

        <div id="page-wrapper">
            <div class="header">
                <h1 class="page-header">
                    Dashboard
                </h1>
                <ol class="breadcrumb">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Dashboard</a></li>
                    <!-- <li class="active">Data</li> -->
                </ol>

            </div>
            <div id="page-inner">

                <div class="dashboard-cards">
                    <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-3">

                            <div class="card horizontal cardIcon waves-effect waves-dark">
                                <div class="card-image red">
                                    <i class="material-icons dp48">import_export</i>
                                </div>
                                <div class="card-stacked red">
                                    <div class="card-content">
                                        <h3><?php echo $counts[0]->p_count;?></h3>
                                    </div>
                                    <div class="card-action">
                                        <strong>PRODUCTS</strong>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-3">
                            <div class="card horizontal cardIcon waves-effect waves-dark">
                                <div class="card-image orange">
                                    <i class="material-icons dp48">shopping_cart</i>
                                </div>
                                <div class="card-stacked orange">
                                    <div class="card-content">
                                        <h3><?php echo $counts[0]->o_count;?></h3>
                                    </div>
                                    <div class="card-action">
                                        <strong>PRE-ORDERS</strong>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-3">

                            <div class="card horizontal cardIcon waves-effect waves-dark">
                                <div class="card-image blue">
                                    <i class="material-icons dp48">equalizer</i>
                                </div>
                                <div class="card-stacked blue">
                                    <div class="card-content">
                                        <h3><?php echo $counts[0]->g_count;?></h3>
                                    </div>
                                    <div class="card-action">
                                        <strong>GALLRY</strong>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-3">

                            <div class="card horizontal cardIcon waves-effect waves-dark">
                                <div class="card-image green">
                                    <i class="material-icons dp48">supervisor_account</i>
                                </div>
                                <div class="card-stacked green">
                                    <div class="card-content">
                                        <h3><?php echo $counts[0]->contact_count;?></h3>
                                    </div>
                                    <div class="card-action">
                                        <strong>CONTACT US</strong>
                                    </div>
                                </div>
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
<!DOCTYPE html>
<html xmlns="">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Dashboard</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="<?php echo base_url();?>admin_assets/css/materialize.min.css" media="screen,projection" />
    <link href="<?php echo base_url();?>admin_assets/css/bootstrap.css" rel="stylesheet" />
    <link href="<?php echo base_url();?>admin_assets/css/font-awesome.css" rel="stylesheet" />
    <link href="<?php echo base_url();?>admin_assets/css/custom-styles.css" rel="stylesheet" />
</head>

<body>
    <div id="wrapper">
        <nav class="navbar navbar-default top-navbar" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle waves-effect waves-dark" data-toggle="collapse"
                    data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand waves-effect waves-dark" href="#">
                     <strong>HSH</strong></a>

                <div id="sideNav" href=""><i class="material-icons dp48">toc</i></div>
            </div>

            <ul class="nav navbar-top-links navbar-right">

                <li><a class="dropdown-button waves-effect waves-dark" href="#!" data-activates="dropdown1"><i
                            class="fa fa-user fa-fw"></i> <b><?php echo $this->session->userdata('a_username');?></b> <i
                            class="material-icons right">arrow_drop_down</i></a></li>
            </ul>
        </nav>
        <ul id="dropdown1" class="dropdown-content">
            <li><a href="<?php echo site_url('admin/change_password')?>"><i class="fa fa-user fa-fw"></i> Change Password</a></li>
            <li><a href="<?php echo site_url('admin/logout')?>"><i class="fa fa-sign-out fa-fw"></i> Logout</a></li>
        </ul>

        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">

                    <li>
                        <a class="active-menu waves-effect waves-dark" href="<?php echo base_url('admin/index')?>"><i class="fa fa-dashboard"></i>
                            Dashboard</a>
                    </li>
                    <li>
                        <a href="<?php echo base_url('admin/categories')?>" class="waves-effect waves-dark"><i class="fa fa-desktop"></i>
                            Categories</a>
                    </li>
                    <li>
                        <a href="<?php echo base_url('admin/products')?>" class="waves-effect waves-dark"><i class="fa fa-rss"></i>
                            Products</a>
                    </li>
                    <li>
                        <a href="<?php echo base_url('admin/pre_orders')?>" class="waves-effect waves-dark"><i class="fa fa-bar-chart-o"></i>
                            Pre-Orders</a>
                    </li>
                    <li>
                        <a href="<?php echo base_url('admin/gallery')?>" class="waves-effect waves-dark"><i class="fa fa-qrcode"></i>
                            Gallery</a>
                    </li>

                    <li>
                        <a href="<?php echo base_url('admin/contact')?>" class="waves-effect waves-dark"><i class="fa fa-phone"></i>Contacts</a>
                    </li>

                </ul>

            </div>

        </nav>
        <!-- /. NAV SIDE  -->
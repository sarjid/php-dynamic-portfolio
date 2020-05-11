<?php include 'inc/header.php' ?>
<?php include 'inc/sidebar.php'; ?>
<?php
   $userid   = session::get('userId');
   $userrole = session::get('userRole');
?>






  <!-- CONTENT -->
            <!-- ========================================================= -->
            <div class="content">
                <!-- content HEADER -->
                <!-- ========================================================= -->
                <div class="content-header">
                    <!-- leftside content header -->
                    <div class="leftside-content-header">
                        <ul class="breadcrumbs">
                            <li><i class="fa fa-home" aria-hidden="true"></i><a href="index.php">Dashboard</a></li>

                            <li><i class="" aria-hidden="true"></i><a href="profile.php">Profile</a></li>
                           

                        </ul>
                    </div>
                </div>
                <!-- =-=-=-=-=-=-=-=MainSection=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= -->
                <div class="row animated fadeInUp">
               
                <div class="col-sm-12 col-md-6">


                    <div class="row">
                           
                   
                    <!-- =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= -->
                    <!--CONTACT INFO-->
                    <div class="panel bg-scale-0 b-primary bt-sm mt-xl">
                        <div class="panel-content">
                            <div class="row">
                                <div class="col-sm-6"></div>
                                <div class="col-sm-6 text-right">
                                    <a href="updateprofile.php" class="btn btn-danger">Update Profile</a>
                                </div>

                            </div>
                                               
                        <div class="profile-photo text-center">
                        <?php

                    $qeury = "SELECT * FROM tbl_users WHERE id ='$userid'";
                            $result = $db->select($qeury);
                        
                            if ($result !== false) {
                                while ($row = mysqli_fetch_assoc($result)) { ?>
                       
                                <img src="<?php echo $row ['image']; ?>" alt="avatar"/>
                                
                        </div>
                        <div class="user-header-info">

                        
                            <h2 class="user-name"><?php echo $row['name']; ?></h2>

                            <h5 class="user-position"><?php echo $row['username']; ?></h5>
                                    <?php }} ?>
                            <div class="user-social-media">
                            <?php 
						$qeury = "SELECT * FROM tbl_socials WHERE id='1'";
						$result = $db->select($qeury);
						if ($result !== false) {						
							while ($row = mysqli_fetch_assoc($result)) {
														
					?>
                                <span class="text-lg">
                                    <a href="<?php echo $row['twitter']; ?>" class="fa fa-twitter-square"></a> 
                                    <a href="<?php echo $row['facebook']; ?>" class="fa fa-facebook-square"></a>
                                    <!-- <a href="<?php echo $row['instagram']; ?>" class="fa fa-linkedin-square"></a>
                                    <a href="#" class="fa fa-google-plus-square"></a> -->
                                </span>
                            <?php }} ?>
                            </div>
                        </div>
                            <h4 class=""><b>Contact Information</b></h4>
                            <ul class="user-contact-info ph-sm">
                            <?php 
						$qeury = "SELECT * FROM contact WHERE id='1'";
						$result = $db->select($qeury);
						if ($result !== false) {						
							while ($row = mysqli_fetch_assoc($result)) {
														
					?>
                                <li><b><i class="color-primary mr-sm fa fa-envelope"></i></b><?php echo $row['email']; ?></li>
                                <li><b><i class="color-primary mr-sm fa fa-phone"></i></b><?php echo $row['phone']; ?></li>
                                <li><b><i class="color-primary mr-sm fa fa-globe"></i></b><?php echo $row['address']; ?></li>
                                <li class="mt-sm"></li>
                            <?php }} ?>
                            </ul>
                        </div>
                        </div>
                        <!--STRIPE-->
                    </div>



                    </div>

                </div>
                <!-- =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= -->
            </div>
            </div>
            </div>
            </div>














<?php include 'inc/footer.php' ?>
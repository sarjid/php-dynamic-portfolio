<?php include 'inc/header.php'; ?>
<?php include 'inc/sidebar.php'; ?>


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

                            <li><i class="" aria-hidden="true"></i><a href="social.php">Site Identity</a></li>
                            <li><i class="" aria-hidden="true"></i><a href="social.php">Favicon</a></li>

                        </ul>
                    </div>
                </div>
  
                <?php
                    if (isset($_POST['submit'])) {
                        
                      

                        // image validation 

                        $permited  = array('jpg','png');
                        $file_name = $_FILES['favicon']['name'];
                        $file_size = $_FILES['favicon']['size'];
                        $file_temp = $_FILES['favicon']['tmp_name'];

                        $div = explode('.', $file_name);
                        $file_ext = strtolower(end($div));
                        $same_image = 'favicon'.'.'.$file_ext;
                        $uploaded_image = "upload/favicon/".$same_image;


                     if (!empty($file_name)) {
                           
                            if ($file_size > 1048567) {
                
                                $imgeError = "<span style='color:red;'>Image Size should be less then 1MB!
                                </span>";
                            
                               } elseif (in_array($file_ext, $permited) === false) {
                                $imgeError = "<span style='color:red;'>You can upload only:-"
                                .implode(', ', $permited)."</span>";
                
                            }else {
                                    //    insert data                  
                              
                                move_uploaded_file($file_temp, $uploaded_image);
                                $query = "UPDATE favicon
                                         SET icon = '$uploaded_image'";
                    
                                   
                                   $updated_rows = $db->update($query);
                                   if ($updated_rows) {
                                    $imgeSucc = "<h3 class='success'style='color:green;'>Your icon Upload Successfully.
                                    </h3>";
                                   
                                 }else {
                                  $imgeSucc = "<h3 class='error'>Data Not Update.. !</h3>";
                               }                   
                            }         
                          }
                
                    }
                                 
                     
                       
        
                ?>
        
                <!-- =-=-=-=-=-=-=-=MainSection=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= -->
                <div class="row animated fadeInUp">

                    <div class="row">
                        <div class="col-sm-12 col-md-10 col-md-offset-0">
                            <div class="panel b-primary bt-md">
                                <div class="panel-content">

                                <?php if (isset($imgeSucc)) {
                               echo $imgeSucc;
                            }?>
                                    
                                    <div class="row">
                                        <div class="col-xs-6">
                                            <h3 class="text-primary "> Update Favicon</h3>
                                            <hr>
                                        </div>
                                        <div class="col-xs-6 text-right">
                                        <?php 
		
                              $query = "SELECT * FROM favicon";
                            $result = $db->select($query);
                          if ($result) {
                          while ($getResult = mysqli_fetch_assoc($result)) {

                          ?>
                            <img src="<?php echo $getResult ['icon']; ?>" height="130px;" width="100px;" style="border-radius: 50%;" alt="banner"/>
                          <?php 			
                          }
                          }else {
                          echo "No Data Found";
                          }
                          ?>

                                        </div>
                                       
                                       
                                    </div>
                  <div class="row">
                   <div class="col-md-12">
 
     <form class="form-horizontal" action="" method="POST" enctype="multipart/form-data">
                              
        <div class="form-group">
        <label for="banner" class="col-sm-3 control-label">Upload Icon</label>
     <div class="col-sm-9">
     <input type="file"  id="banner" name="favicon">
     <?php if (isset($imgeError)) {
                               echo $imgeError;
                            }?>    
                                    
       </div>                                                    
       </div>
 


      <div class="form-group">
      <div class="col-sm-offset-3 col-sm-9">
           
      <input type="submit" name="submit" class="btn btn-primary" value="Upload">
                              
    
    </div>
                                   </div>
                                </form>
                                </div>
                              </div>
                            </div>
                           </div>
                        </div>
                        <!--STRIPE-->
                    </div>



                    </div>

                </div>
                <!-- =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= -->
            </div>


<?php include 'inc/footer.php'; ?>
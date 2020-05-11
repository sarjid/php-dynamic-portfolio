<?php include 'inc/header.php'; ?>
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

                            <li><i class="" aria-hidden="true"></i><a href="social.php">Portfolio</a></li>
                            <li><i class="" aria-hidden="true"></i><a href="social.php">Post Work</a></li>

                        </ul>
                    </div>
                </div>
  
                <!-- validation  -->
                <?php 
             if ($_SERVER['REQUEST_METHOD'] == 'POST') {

                // Validation 
                    // title 
                    if (isset($_POST['name']) && !empty($_POST['name'])) {
                              
                      $name = $_POST['name'];
                                     
                 }else {
                       $titleError = '<strong style="color: red;">Please Input Your name..!</strong>';
                          }
      
          

             

             // image validation 

             $permited  = array('png','jpg','gif');
             $file_name = $_FILES['image']['name'];
             $file_size = $_FILES['image']['size'];
             $file_temp = $_FILES['image']['tmp_name'];

             $div = explode('.', $file_name);
             $file_ext = strtolower(end($div));
             $same_image = 'image'.'.'.$file_ext;
             $uploaded_image = "upload/users/".$same_image;


         if (empty($file_name)) {
                $imgeError = "<span class='error'>Please Select any Image !</span>";
               }elseif ($file_size >1048567) {
                $imgeError = "<strong style='color:red;'>Image Size should be less then 1MB!
                </strong>";
               } elseif (in_array($file_ext, $permited) === false) {
                $imgeError = "<span style='color:red;'>You can upload only:-"
                .implode(', ', $permited)."</span>";

        }else {
                    //    insert data 

            if (isset($name) ) {
                $name  =  mysqli_real_escape_string($db->link, $_POST['name']);
               
                move_uploaded_file($file_temp, $uploaded_image);
                $query = "UPDATE tbl_users
                         SET 
                         name  = '$name',
                         image  = '$uploaded_image'
                         WHERE id = '$userid'";
    
                   
                   $updated_rows = $db->update($query);
                   if ($updated_rows) {
                    $imgeSucc = "<h4 class='success'style='color:green;'>Your Profile Updated Successfully.
                    </h4>";
                   
                 }else {
                  $imgeSucc = "<span class='error'>Data Not Update.. !</span>";
               } 
                   
               }
               
              
          }


           
               
        }  
            
                
                    

       
        ?>
        
                <!-- =-=-=-=-=-=-=-=MainSection=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= -->
                <div class="row animated fadeInUp">

                    <div class="row">
                        <div class="col-sm-12 col-md-6 col-md-offset-0">
                            <div class="panel b-primary bt-md">
                                <div class="panel-content">

                                <?php if (isset($imgeSucc)) {
                               echo $imgeSucc;
                            }?>
                                    
                                    <div class="row"> <?php

$qeury = "SELECT * FROM tbl_users WHERE id ='$userid'";
        $result = $db->select($qeury);
    
        if ($result !== false) {
            while ($row = mysqli_fetch_assoc($result)) { ?>
   

                                 <div class="col-xs-6 ">
                                        <img src="<?php echo $row ['image']; ?>" height="80px;" width="80px;" alt="avatar"/>
                                        </div>
                                        
                                        <div class="col-xs-6 text-right">
                                            <h4>Update Profile</h4>
                                            <hr>
                                        </div>
                                       
                                       
                                       
                                       
                                    </div>
                  <div class="row">
                   <div class="col-md-12">
 
     <form class="form-horizontal" action="" method="POST" enctype="multipart/form-data">

                            
     <div class="form-group">
       
        <label for="title" class="col-sm-3 control-label">Name</label>
     <div class="col-sm-9">
       
     <input type="text" class="form-control" id="title" name="name" value="<?php echo $row ['name']; ?>"  data-validation="required">
            <?php }}?>

     <?php if (isset($titleError)) {
                               echo $titleError;
                            }?>
                                    
       </div>                                                    
       </div>


                              
        <div class="form-group">
        <label for="banner" class="col-sm-3 control-label">Upload Image</label>
     <div class="col-sm-9">
     <input type="file"  id="banner" name="image">
     <?php if (isset($imgeError)) {
                               echo $imgeError;
                            }?>    
                                    
       </div>                                                    
       </div>
 


      <div class="form-group">
      <div class="col-sm-offset-3 col-sm-9">
           
      <input type="submit" name="submit" class="btn btn-primary" value="Update">
                              
    
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
<?php

include "includes/admin_header.php";
?>

<?php

    if (isset($_SESSION['username'])) {
        $username= $_SESSION['username'];

        $query="SELECT * FROM  users WHERE user_name='{$username}'  ";
        $select_user_profile_query=mysqli_query($connection,$query);

        while ($row=mysqli_fetch_array($select_user_profile_query)) {
        $user_id = $row['user_id'];
        $user_name = $row['user_name'];
        $user_password = $row['user_password'];
        $user_firstname = $row['user_firstname'];
        $user_lastname = $row['user_lastname'];
        $user_email = $row['user_email'];
        $user_image = $row['user_image'];
        $user_role = $row['user_role'];
        }
    }

?>


<?php 

 // Post request to update user 


if (isset($_POST['edit_user'])) {


    $user_firstname = escape($_POST['user_firstname']);
    $user_lastname = escape($_POST['user_lastname']);
    $user_role = escape($_POST['user_role']);
    


    $user_name = escape($_POST['user_name']);
    $user_email = escape($_POST['user_email']);
    $user_password = escape($_POST['user_password']);
            // $post_date     = escape(date('d-m-y'));

       
      

        // if(!empty($user_password)) { 

        //   $query_password = "SELECT user_password FROM users WHERE user_id =  $the_user_id";
        //   $get_user_query = mysqli_query($connection, $query_password);
        //   confirmQuery($get_user_query);

        //   $row = mysqli_fetch_array($get_user_query);

        //   $db_user_password = $row['user_password'];


        // if($db_user_password != $user_password) {

        //     $hashed_password = password_hash($user_password, PASSWORD_BCRYPT, array('cost' => 12));

        //   }


    $query = "UPDATE users SET ";
    $query .= "user_firstname  = '{$user_firstname}', ";
    $query .= "user_lastname = '{$user_lastname}', ";
    $query .= "user_role   =  '{$user_role}', ";
    $query .= "user_name = '{$user_name}', ";
    $query .= "user_email = '{$user_email}', ";
    $query .= "user_password   = '{$user_password}' ";
    $query .= "WHERE user_name = '{$username}' ";


    $edit_user_query = mysqli_query($connection, $query);

    confirmQuery($edit_user_query);


    echo "User Updated" . " <a href='users.php'>View Users?</a>";

    



}  // if password empty check end


// Post reques to update user end


?>


    <div id="wrapper">



    <!-- navigation -->
       
        <?php

        include "includes/admin_navigation.php";
        ?>
        
        
        <div id="page-wrapper">

            <div class="container-fluid">




                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                       
                    <h1 class="page-header">
                            Welcome to Admin
                            <!-- <small>Author</small> -->
                        </h1>

     <form action="" method="post" enctype="multipart/form-data">    
     
     
     
      <div class="form-group">
         <label for="title">Firstname</label>
          <input type="text" value="<?php echo $user_firstname; ?>" class="form-control" name="user_firstname">
      </div>
      
      
      

       <div class="form-group">
         <label for="post_status">Lastname</label>
          <input type="text" value="<?php echo $user_lastname; ?>" class="form-control" name="user_lastname">
      </div>
     
     
         <div class="form-group">
       
       <select name="user_role" id="">
       
    <option value="<?php echo $user_role; ?>"><?php echo $user_role; ?></option>
       <?php 

        if ($user_role == 'admin') {

            echo "<option value='subscriber'>subscriber</option>";

        } else {

            echo "<option value='admin'>admin</option>";

        }

        ?>
        
       </select>
       
       
       
       
      </div>
      
<!--
      <div class="form-group">
         <label for="post_image">Post Image</label>
          <input type="file"  name="image">
      </div>
-->

      <div class="form-group">
         <label for="post_tags">Username</label>
          <input type="text" value="<?php echo $user_name; ?>" class="form-control" name="user_name">
      </div>
      
      <div class="form-group">
         <label for="post_content">Email</label>
          <input type="email" value="<?php echo $user_email; ?>" class="form-control" name="user_email">
      </div>
      
      <div class="form-group">
         <label for="post_content">Password</label>
          <input type="password" value="<?php echo $user_password; ?>" class="form-control" name="user_password">
      </div>
      
      
      

       <div class="form-group">
          <input class="btn btn-primary" type="submit" name="edit_user" value="Update Profile">
      </div>


</form>
                   
                    </div>

                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>





        <!-- /#page-wrapper -->

   <?php

    include "includes/admin_footer.php";
    ?>

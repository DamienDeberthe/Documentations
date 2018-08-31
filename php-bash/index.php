<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Admin Page</title>
  </head>

  <body>

        <center>

        <?php

        $domain= '192.168.39.184';
        $page= 'index.php';


                if (isset($_POST["create_file_1"]))
                {
                        shell_exec("/var/www/html/bash/create_file_1.sh");
                        header('Location: http://'.$domain.'/'.$page);
                }
                if (isset($_POST["create_file_2"]))
                {
                        shell_exec("/var/www/html/bash/create_file_2.sh");
                        header('Location: http://'.$domain.'/'.$page);
                }
                if (isset($_POST["delete_files"]))
                {
                        shell_exec("/var/www/html/bash/delete_files.sh");
                        header('Location: http://'.$domain.'/'.$page);
                }
                if (isset($_POST["see_dir"]))
                {
                        $output = shell_exec('ls -l /var/www/html/test');
                        $retour_see_dir= "Résultat de la commande :<br/><pre>$output</pre>";
                }
                                if (isset($_POST["file"]))
                {
                                           putenv("FILE=".$_POST["file"]);
                                           shell_exec("/var/www/html/bash/create_file.sh");
//                                         echo ($_POST["file"]);
                                           $retour_create_file= "Le nouveau fichier cree s'intitule : " .$_POST["file"];
//                        header('Location: http://'.$domain.'/'.$page);
                }


        ?>




        <h1>
                Admin Page
        </h1>

        <br/>
        <br/>

        <?php
            echo "$retour_see_dir <br>";
                        echo "$retour_create_file <br><br>";

                ?>


                        <form action="#" method="post">
                                <input type="submit" name="create_file_1" id="create_file_1" value="create_file_1">
                        </form>
            <br/>

            <form action="#" method="post">
                <input type="submit" name="create_file_2" id="create_file_2" value="create_file_2">
            </form>
            <br/>

            <form action="#" method="post">
                <input type="submit" name="delete_files" id="delete_files" value="delete_files">
            </form>
                        <br/>

            <form action="#" method="post">
                <input type="submit" name="see_dir" id="see_dir" value="see_dir">
            </form>
                        <br/>

                        <br/>
                        <form action="#" method="post">
                                New file : <input type="text" name="file" size="15">
                                <input type="submit" name="create_file" id="create_file" value="create_file">
                        </form>

                        <h1><br/><br/><br/></h1>
                        <a href="http://<?php echo $domain ?>"><?php echo $domain ?></a>


        </center>


        </body>
</html>

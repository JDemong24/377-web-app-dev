<?php
include('library.php');
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" type="text/css" href="style.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ticketing System</title>
</head>
<body>
    <h1>Welcome To The Ticket Editing System</h1>
    <h5>Here, you can edit and resolve tech support tickets</h5>
    <br></br>

    <?php
        $conn=get_database_connection();
        extract($_REQUEST);

        $sql="SELECT * FROM tickets WHERE tkt_id=$id";
        $result=$conn->query($sql);

        $row=$result->fetch_assoc();
    ?>

    <form action='ticket-submit.php' method='POST'>
        <span class="label">Problem: </span><input type="text" id="problem" name="problem" value="<?php echo $row['tkt_problem'];?>" />
        <br>
        <br>
        <span class="label">Priority: </span><select name="priority">
            <option value="1" <?php echo($row['tkt_priority']==1? 'selected="true"':'');?> >High</option>
            <option value="2" <?php echo($row['tkt_priority']==2? 'selected="true"':'');?> >Medium</option>
            <option value="3" <?php echo($row['tkt_priority']==3? 'selected="true"':'');?> >Low</option>
        </select>
        <br>
        <br>
        <span class="label">Contact Email: </span><input type="text" id="contact-email" name="contactEmail" value="<?php echo $row['tkt_contact_email'];?>"/>
        <br>
        <br>
        <br>
        <span class="label">Resolution: </span><input type="text" id="resolution" name="resolution" value="<?php echo $row['tkt_resolution'];?>"/>
        <br>
        <br>
        <span class="label">Status: </span><select name="status">
            <option value="1"<?php echo($row['tkt_priority']==1? 'selected="true"':'');?>>Open</option>
            <option value="2"<?php echo($row['tkt_priority']==2? 'selected="true"':'');?>>In Progress</option>
            <option value="3"<?php echo($row['tkt_priority']==3? 'selected="true"':'');?>>Closed</option>
        </select>
        <br>
        <br>
        <input type="submit">
    </form>
</body>
</html>
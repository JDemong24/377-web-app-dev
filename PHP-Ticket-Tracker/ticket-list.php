<?php
include('library.php');
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ticketing System</title>
    <script>
        function deleteTicket(id){
            if(confirm('Are you sure you want to delete this record?')){
                location.href='ticketDelete.php?id='+id;
            }
        }
    </script>
</head>
<body>
    <h1>Ticket List</h1>
    <p><a href="ticket-form.php"><i class="fa fa-plus-circle" aria-hidden="true"></i> add a ticket</a></p>

    <table border="1">
        <tr>
            <th>ID</th>
            <th>Problem</th>
            <th>Priority</th>
            <th>Contat</th>
            <th>Status</th>
            <th>Resolution</th>
            <th>Actions</th>
        </tr>
        <?php
            
            $conn=get_database_connection();
            
            // build SELECT statement
            $sql="SELECT * FROM tickets";

            //execute query and save results
            $result=$conn->query($sql);

            // iterate over each row in results
            while($row=$result->fetch_assoc()){
                echo "<tr>";
                echo "<td>".$row['tkt_id']."</td>";
                echo "<td>".$row['tkt_problem']."</td>";
                echo "<td>".$row['tkt_priority']."</td>";
                echo "<td><a href=mailto:".$row['tkt_contact_email']."'>".$row['tkt_contact_email']."</a></td>";
                echo "<td>".$row['tkt_status']."</td>";
                echo "<td>".$row['tkt_resolution']."</td>";
                echo "<td>";
                echo "<a href='ticketEdit.php?id=".$row['tkt_id']."' title='Edit this ticket'><i class='fa fa-pencil' aria-hidden='true'></i></a>  ";
                echo "<a href='ticketDelete.php?id=".$row['tkt_id']."'title='Delete this ticket'><i class='fa fa-trash' aria-hidden='true'></i></a>";
                echo "</td>";
                echo "<tr>";
            }
        ?>
    </table>
    
</body>
</html>
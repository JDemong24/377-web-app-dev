<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Thank You For Submitting Your Problem.</h1>

    <p>You can check the status of this ticket with ID_____.</p>

    <?php
    extract($_REQUEST);
    echo "<h3>Problem: $problem</h3>";
    echo "<h3>Priority: $priority</h3>";
    echo "<h3>Contact Email: $contactEmail</h3>";
    ?>
    <a href="ticket-form.php">Back to the Ticket Form</a>
    
</body>
</html>
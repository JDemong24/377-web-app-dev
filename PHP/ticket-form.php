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
    <h1>Welcome To The Ticketing System</h1>
    <br></br>

    <form action='ticket-submit.php' method='POST'>
        <span class="label">Problem: </span><input type="text" id="problem" name="problem" />
        <br>
        <br>
        <span class="label">Priority: </span><select name="priority">
            <option value="1">High</option>
            <option value="2">Medium</option>
            <option value="3">Low</option>
        </select>
        <br>
        <br>
        <span class="label">Contact Email: </span><input type="text" id="contact-email" name="contactEmail" />
        <br>
        <br>
        <input type="submit">
    </form>
</body>
</html>
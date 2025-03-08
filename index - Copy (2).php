<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Jema Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .navbar {
            background-color: #00695c;
            color: white;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .navbar .logo {
            font-size: 24px;
            font-weight: bold;
        }
        .navbar ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            display: flex;
        }
        .navbar ul li {
            margin-left: 20px;
        }
        .navbar ul li a {
            color: white;
            text-decoration: none;
            font-size: 16px;
        }
        .header {
            background-color: #00796b;
            color: white;
            padding: 15px;
            text-align: center;
            font-size: 24px;
        }
        .dashboard {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding: 20px;
        }
        .panel {
            background-color: white;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.2);
            margin: 15px;
            padding: 20px;
            width: 250px;
            text-align: center;
            transition: transform 0.2s;
        }
        .panel img {
            width: 100px;
            height: 100px;
            margin-bottom: 10px;
        }
        .panel h2 {
            font-size: 18px;
            margin-bottom: 15px;
            color: #00796b;
        }
        .panel p {
            font-size: 14px;
            color: #333;
        }
        .panel:hover {
            transform: scale(1.05);
        }
        .panel a {
            text-decoration: none;
            color: inherit;
        }
    </style>

<body>

    <div class="navbar">
        <div class="logo">Jema Dashboard</div>
        <ul>
            <li><a href="#">Home</a></li>
            <li><a href="#">Patients</a></li>
            <li><a href="#">Appointments</a></li>
            <li><a href="#">Reports</a></li>
            <li><a href="#">Admin</a></li>
        </ul>
    </div>

   
    <div class="dashboard">
        <div class="panel">
            <a href="#">
                <img src="registration-icon.png" alt="Patients">
                <h2>Registration</h2>
                <p>Manage patients' records</p>
            </a>
        </div>

        <div class="panel">
            <a href="#">
                <img src="triage-icon.png" alt="triage">
                <h2>Triage</h2>
                <p>Schedule and manage appointments</p>
            </a>
        </div>


        <div class="panel">
            <a href="#">
                <img src="clinical-icon.png" alt="clinical">
                <h2>Clinical</h2>
                <p>Schedule and manage appointments</p>
            </a>
        </div>


        <div class="panel">
            <a href="#">
                <img src="appointment-icon.png" alt="Appointments">
                <h2>Appointments</h2>
                <p>Schedule and manage appointments</p>
            </a>
        </div>


        <div class="panel">
            <a href="#">
                <img src="appointment-icon.png" alt="Appointments">
                <h2>Appointments</h2>
                <p>Schedule and manage appointments</p>
            </a>
        </div>

        <div class="panel">
            <a href="#">
                <img src="appointment-icon.png" alt="Appointments">
                <h2>Appointments</h2>
                <p>Schedule and manage appointments</p>
            </a>
        </div>

        <div class="panel">
            <a href="#">
                <img src="appointment-icon.png" alt="Appointments">
                <h2>Appointments</h2>
                <p>Schedule and manage appointments</p>
            </a>
        </div>

        <div class="panel">
            <a href="#">
                <img src="appointment-icon.png" alt="Appointments">
                <h2>Appointments</h2>
                <p>Schedule and manage appointments</p>
            </a>
        </div>

        <div class="panel">
            <a href="#">
                <img src="appointment-icon.png" alt="Appointments">
                <h2>Appointments</h2>
                <p>Schedule and manage appointments</p>
            </a>
        </div>

        <div class="panel">
            <a href="#">
                <img src="appointment-icon.png" alt="Appointments">
                <h2>Appointments</h2>
                <p>Schedule and manage appointments</p>
            </a>
        </div>

        <div class="panel">
            <a href="#">
                <img src="appointment-icon.png" alt="Appointments">
                <h2>Appointments</h2>
                <p>Schedule and manage appointments</p>
            </a>
        </div>

        <div class="panel">
            <a href="#">
                <img src="appointment-icon.png" alt="Appointments">
                <h2>Appointments</h2>
                <p>Schedule and manage appointments</p>
            </a>
        </div>

        <div class="panel">
            <a href="#">
                <img src="appointment-icon.png" alt="Appointments">
                <h2>Appointments</h2>
                <p>Schedule and manage appointments</p>
            </a>
        </div>


        <div class="panel">
            <a href="#">
                <img src="visit-icon.png" alt="Visits">
                <h2>Visits</h2>
                <p>Track patient visits</p>
            </a>
        </div>

        <div class="panel">
            <a href="#">
                <img src="reports-icon.png" alt="Reports">
                <h2>Reports</h2>
                <p>View and generate reports</p>
            </a>
        </div>
    </div>
</body>
</html>

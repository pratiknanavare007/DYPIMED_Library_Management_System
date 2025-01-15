<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="index.php">DYPIMED Library Management System</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="index.php">Home</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="about_us.php">About Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contact_us.php">Contact Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="login.php">Login</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container mt-5">
        <h1 class="text-center">About Us</h1>
        <p class="text-center text-muted">Welcome to our DYPIMED Library Management System</p>
        
        <div class="row mt-4">
            <div class="col-md-6">
                <h3>Our Mission</h3>
                <p>Our mission is to provide easy access to a vast collection of books, resources, and services to foster knowledge, creativity, and learning within our community.</p>
            </div>
            <div class="col-md-6">
                <h3>What We Offer</h3>
                <ul>
                    <li>Thousands of books and e-books across various genres and topics.</li>
                    <li>Member accounts to borrow, reserve, and renew books.</li>
                    <li>Access to research tools and digital libraries.</li>
                    <li>Support from professional librarians.</li>
                </ul>
            </div>
        </div>

        <div class="row mt-4">
            <div class="col-md-6">
                <h3>Our Team</h3>
                <p>We have a dedicated team of librarians, staff, and administrators committed to delivering excellent library services to our users.</p>
            </div>
            <div class="col-md-6">
                <img src="asset/images/library_team.png" class="img-fluid rounded" alt="Library Team">
            </div>
        </div>

        <div class="row mt-4">
            <div class="col-12">
                <h3>Our Values</h3>
                <p>We believe in the power of knowledge, inclusivity, innovation, and community engagement to drive personal and professional growth.</p>
            </div>
        </div>
    </div>

    <footer class="bg-dark text-white text-center py-3 mt-5">
        <p>&copy; <?php echo date('Y'); ?> BY PROGRAMEEGEEKS | Made By Pratik And Shoyab.</p>
    </footer>
</body>
</html>

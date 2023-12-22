<?php
session_start();
include('connection.php');

if (isset($_SESSION['username']) || isset($_SESSION['email'])) {
    header('Location: dashboard.php');
    exit;
}

if (isset($_POST['submit'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];
    $passwordError = false;

    $sql = "SELECT * FROM tbl_user WHERE username='$username'";
    $query = mysqli_query($conn, $sql);

    if (mysqli_num_rows($query) > 0) {
        $row = mysqli_fetch_array($query);
        if (password_verify($password, $row['password'])) {
            $_SESSION['username'] = $username;
            $_SESSION['email'] = $row['email'];

            if (isset($row['nama'])) {
                $_SESSION['fullname'] = $row['nama'];
            }

            $_SESSION['level'] = $row['level'];
            header('Location: dashboard.php');
            exit;
        } else {
            $passwordError = true;
        }
    }
    header('Location: login.php?message=failure');
    exit;
}
?>

<!DOCTYPE html>
<html>

<head>
    <title></title>
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
</head>

<body>
    <div class="container">
        <div class="login-container">
            <h2><a href="index.php" class="btn-add"><i class="fa-solid fa-arrow-left"></i></a> Welcome back, User!</h2>
            <br>
            <?php
            if (isset($_GET['message'])) {
                if ($_GET['message'] == "failure") {
                    echo "Login gagal! username dan password salah!<br><br>";
                } elseif ($_GET['message'] == "logout") {
                    echo "Anda telah berhasil logout!<br><br>";
                } elseif ($_GET['message'] == "session") {
                    echo "Anda harus login terlebih dahulu!<br><br>";
                } elseif ($_GET['message'] == "registered") {
                    echo "Register berhasil! Silahkan login<br><br>";
                } elseif ($_GET['message'] == "password") {
                    echo "Password berhasil diubah! Silahkan login kembali<br><br>";
                }
            }
            ?>
            <form name="login-form" action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST" class="login-form">
                <span>Username</span>
                <input type="text" name="username" required>
                <span>Password</span>
                <input type="password" name="password" required>
                <span>Don't have an account? <a href="register.php">Click here</a></span>
                <br><input type="submit" name="submit">
            </form>
        </div>
    </div>
    <script src="https://kit.fontawesome.com/d9b2e6872d.js" crossorigin="anonymous"></script>
</body>

</html>
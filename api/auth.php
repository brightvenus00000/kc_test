<?php
    include_once 'config.php';
    include_once 'kc_user.php';
    $users = new User();

    if ($_SERVER['REQUEST_METHOD'] == "POST") {
        if ($users->authUser($_POST['username'], $_POST['password'])) {
            $_SESSION['username'] = $_POST['username'];
            echo json_encode([
                "status" => 200,
                "message" => "Authentication Success."
            ]);
        } else {
            echo json_encode([
                "status" => 401,
                "message" => "Your login credentials were incorrect."
            ]);
        }
    }

    if ($_SERVER['REQUEST_METHOD'] == "DELETE") {
        unset($_SESSION["username"]);
        echo json_encode([
            "status" => 200,
            "message" => "Logout successfully."
        ]);
    }
?>
<?php
    include_once 'config.php';
    include_once 'kc_user.php';
    $users = new User();

    if ($_SERVER['REQUEST_METHOD'] == "GET") {
        if (isset($_SESSION['username'])) {
            echo json_encode([
                "status" => 200,
                "students" => $users->getStudents()
            ]);
        } else {
            echo json_encode([
                "status" => 401,
                "message" => "Authentication Error."
            ]);
        }
    }
?>
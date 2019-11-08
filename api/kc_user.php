<?php
class User {
    private $key = "5ae1b8a17bad4da4fdac796f64c16ecd";
    public $db;
 
    public function __construct() {
        $host = "localhost";
        $dbname = "kc_test";
        $username = "root";
        $password = "";

        $this->db = new mysqli($host, $username, $password, $dbname);
        if ($this->db->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }
    }

    function checkUser($username) {
        $user = $this->db->query("SELECT * FROM api_users WHERE username='".$username."'");
        $result = $user->fetch_assoc();
        return $user->num_rows > 0 ? $result : false;
    }

    function authUser($username, $password) {
        $user = $this->checkUser($username);
        if ($user == false) {
            return false;
        }
        return openssl_decrypt($user['password'], "AES-128-ECB", $this->key) == $password;
    }

    function getStudents() {
        $students = $this->db->query("SELECT * FROM students");
        $result = [];
        if ($students->num_rows > 0) {
            while($row = $students->fetch_assoc()) {
                $result[] = $row;
            }
            return $result;
        }
        return "No results";
    }

    function insertUser($username, $password) {
        return $this->db->query("INSERT INTO api_users (username, password) VALUES ('".$username."', '".openssl_encrypt($password, "AES-128-ECB", $this->key)."')");
    }

    function insertStudent($name, $description, $group_name) {
        return $this->db->query("INSERT INTO students (name, description, group_name) VALUES ('".$name."', '".$description."', '".$group_name."')");
    }
}

?>
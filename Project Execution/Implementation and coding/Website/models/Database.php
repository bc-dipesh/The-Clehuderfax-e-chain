<?php

class Database
{
    // db params
    private $dsn = "oci:dbname=//localhost/XE";
    private $username = "HR";
    private $password = "test1234";
    public $conn;

    // db connection
    public function __construct()
    {
        // the connection link
        $this->conn = null;

        try {
            $this->conn = new PDO($this->dsn, $this->username, $this->password);
            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $this->conn->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ);
        } catch (PDOException $ex) {
            echo "Connection Error $ex->getMessage()";
            die();
        }
    }

    public function closeConnection()
    {
        $this->conn = null;
    }
}

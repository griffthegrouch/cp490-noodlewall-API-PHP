<?php
class Database{
  //change between these connections when deploying to online hosted version / local version

  // specify database credentials


    
    private $host = "localhost";
    private $db_name = "noodlewall_db";
    private $username = "root";
    private $password = "";
    public $conn;

    /*
    private $host = "localhost";
    private $db_name = "gatkison_noodlewall_db";
    private $username = "gatkison_noodler";
    private $password = "noodlewall123!";
    public $conn;
    */
  
    // get the database connection
    public function getConnection(){
  
        $this->conn = null;
  
        try{
            $this->conn = new PDO("mysql:host=" . $this->host . ";dbname=" . $this->db_name, $this->username, $this->password);
            $this->conn->exec("set names utf8");
        }catch(PDOException $exception){
            echo "Connection error: " . $exception->getMessage();
        }
  
        return $this->conn;
    }
}
?>
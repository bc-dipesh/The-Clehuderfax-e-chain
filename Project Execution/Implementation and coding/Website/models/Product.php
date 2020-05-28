<?php
// import database to interact with tables in database
require_once "./models/Database.php";

// Represents the products table in the database
class Product
{
    // attributes (represents the columns in the database)
    private $productId;
    private $productCategoryId;
    private $productName;
    private $description;
    private $rate;
    private $isAvailable;
    private $image;
    private $allergyInfo;
    private $minOrder;
    private $maxOrder;
    private $quantity;

    // the database link
    private $db;

    // constructor
    public function __construct()
    {
        // setting up and getting a connection to the database
        $this->db = new Database();
        $this->db->connect();
    }


//    public function __construct($productId, $productCategoryId, $productName, $description, $rate, $isAvailable, $image, $allergyInfo, $minOrder, $maxOrder, $quantity)
//    {
//        // initialize attributes
//        $this->productId = $productId;
//        $this->productCategoryId = $productCategoryId;
//        $this->productName = $productName;
//        $this->description = $description;
//        $this->rate = $rate;
//        $this->isAvailable = $isAvailable;
//        $this->image = $image;
//        $this->allergyInfo = $allergyInfo;
//        $this->minOrder = $minOrder;
//        $this->maxOrder = $maxOrder;
//        $this->quantity = $quantity;
//
//
//    }

    // getters

    // returns all the products from the table
    public function getAllProducts()
    {
        $query = "SELECT * FROM PRODUCTS";
        $stmt = $this->db->conn->prepare($query);
        $stmt->execute();

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    /**
     * @return mixed
     */
    public function getProductId()
    {
        return $this->productId;
    }

    /**
     * @return mixed
     */
    public function getProductCategoryId()
    {
        return $this->productCategoryId;
    }

    /**
     * @return mixed
     */
    public function getProductName()
    {
        return $this->productName;
    }

    /**
     * @return mixed
     */
    public function getDescription()
    {
        return $this->description;
    }

    /**
     * @return mixed
     */
    public function getRate()
    {
        return $this->rate;
    }

    /**
     * @return mixed
     */
    public function getIsAvailable()
    {
        return $this->isAvailable;
    }

    /**
     * @return mixed
     */
    public function getImage()
    {
        return $this->image;
    }

    /**
     * @return mixed
     */
    public function getAllergyInfo()
    {
        return $this->allergyInfo;
    }

    /**
     * @return mixed
     */
    public function getMinOrder()
    {
        return $this->minOrder;
    }

    /**
     * @return mixed
     */
    public function getMaxOrder()
    {
        return $this->maxOrder;
    }

    /**
     * @return mixed
     */
    public function getQuantity()
    {
        return $this->quantity;
    }

    // setters

    /**
     * @param mixed $productId
     */
    public function setProductId($productId): void
    {
        $this->productId = $productId;
    }

    /**
     * @param mixed $productCategoryId
     */
    public function setProductCategoryId($productCategoryId): void
    {
        $this->productCategoryId = $productCategoryId;
    }

    /**
     * @param mixed $productName
     */
    public function setProductName($productName): void
    {
        $this->productName = $productName;
    }

    /**
     * @param mixed $description
     */
    public function setDescription($description): void
    {
        $this->description = $description;
    }

    /**
     * @param mixed $rate
     */
    public function setRate($rate): void
    {
        $this->rate = $rate;
    }

    /**
     * @param mixed $isAvailable
     */
    public function setIsAvailable($isAvailable): void
    {
        $this->isAvailable = $isAvailable;
    }

    /**
     * @param mixed $image
     */
    public function setImage($image): void
    {
        $this->image = $image;
    }

    /**
     * @param mixed $allergyInfo
     */
    public function setAllergyInfo($allergyInfo): void
    {
        $this->allergyInfo = $allergyInfo;
    }

    /**
     * @param mixed $minOrder
     */
    public function setMinOrder($minOrder): void
    {
        $this->minOrder = $minOrder;
    }

    /**
     * @param mixed $maxOrder
     */
    public function setMaxOrder($maxOrder): void
    {
        $this->maxOrder = $maxOrder;
    }

    /**
     * @param mixed $quantity
     */
    public function setQuantity($quantity): void
    {
        $this->quantity = $quantity;
    }


}

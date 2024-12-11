<?php

class Produto{
    public function ListarProdutos(){
        $conn = new PDO('mysql:host=localhost;dbname=db_police','root','');

        $query = 'SELECT * FROM db_produto';

        $resultado = $conn->query($query)->fetchAll();


        // unset($conn); = "fecha" a conexão com o banco.
        return $resultado;
    }
}
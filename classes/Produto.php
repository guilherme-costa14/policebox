<?php

class Produto{
    public function ListarProdutos($limite = ''){
        $conn = new PDO('mysql:host=localhost;dbname=db_police','root','');


        if($limite != ''){
            $aux = ' ORDER BY RAND() LIMIT ' . $limite;
        }else{
            $aux = '';
        }

        $query = 'SELECT * FROM tb_produto' . $aux;

        $resultado = $conn->query($query)->fetchAll();


        // unset($conn); = "fecha" a conexão com o banco.
        return $resultado;
    }
}
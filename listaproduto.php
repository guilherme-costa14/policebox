<?php
include './classes/Produto.php';

include './includes/header.php';


$produto = new Produto();
$dadosProdutos = $produto->ListarProdutos();


include './includes/produto.php';
include_once './includes/footer.php';
